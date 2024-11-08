
// 비회원 장바구니 쿠키 함수, 14일간 유지
const CookieUtil = {
    setCookie: function (name, value, days = 14) {
        let expires = "";
        if (days) {
            const date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + encodeURIComponent(value) + expires + "; path=/";
    },

    getCookie: function (name) {
        const nameEQ = name + "=";
        const ca = document.cookie.split(';');
        for (let i = 0; i < ca.length; i++) {
            let c = ca[i].trim();
            if (c.indexOf(nameEQ) === 0) return decodeURIComponent(c.substring(nameEQ.length));
        }
        return null;
    },

    saveCartItems: function (items) {
        const simplifiedItems = items.map(item => ({
            pdtId: item.pdtId,
            quantity: item.quantity
        }));
        this.setCookie('cartItems', JSON.stringify(simplifiedItems), 14);
    },

    setBasketId: function () {
        let basketId = this.getCookie('basketId');
        if (!basketId) {
            basketId = Math.random().toString(36).substring(2, 10);
            this.setCookie('basketId', basketId, 14);
        }
        return basketId;
    },

    getCartItems: function () {
        const cartCookie = this.getCookie('cartItems');
        try {
            return cartCookie ? JSON.parse(cartCookie) : [];
        } catch (e) {
            console.error("Error parsing cart items from cookie:", e);
            return [];
        }
    }
};

// 장바구니에 아이템 추가 함수
function addToCart(pdtId) {
    const basketId = CookieUtil.setBasketId();
    const cartItems = CookieUtil.getCartItems();
    const existingItem = cartItems.find(item => item.pdtId === pdtId);

    if (existingItem) {
        const userConfirmed = confirm("같은 상품이 존재합니다. 추가하시겠습니까?");
        if (!userConfirmed) return;
        existingItem.quantity += 1;
    } else {
        cartItems.push({
            pdtId: pdtId,
            quantity: 1
        });
    }

    CookieUtil.saveCartItems(cartItems);
    alert("장바구니에 상품이 추가되었습니다.");
    updateCartCount();
}

// 장바구니 카운트 업데이트 함수
function updateCartCount() {
    const cartItems = CookieUtil.getCartItems();
    const uniquepdtIds = new Set(cartItems.map(item => item.pdtId));
    const cartCount = uniquepdtIds.size;
    $(".count.EC-Layout-Basket-count").text(cartCount);
}

// 이벤트 바인딩
$(document).ready(function () {
    updateCartCount();

    $(document).on("click", ".cart-in img", function () {
        const pdtId = $(this).data("pdtId");
        addToCart(pdtId);
        updateCartCount();
    });
});
