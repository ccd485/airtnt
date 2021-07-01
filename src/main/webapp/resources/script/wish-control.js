/**
 * 위시리스트 추가 삭제 컨트롤
 */

var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'));
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
	return new bootstrap.Popover(popoverTriggerEl);
});

var popover = new bootstrap.Popover(document.querySelector('.popover-dismiss'), {
	trigger: 'focus'
})