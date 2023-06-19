// Add event listener to show the modal
document.getElementById('openModalButton').addEventListener('click', function() {
  document.querySelector('.modal').style.display = 'flex';
});

// Add event listener to hide the modal
document.getElementById('closeModalButton').addEventListener('click', function() {
  document.querySelector('.modal').style.display = 'none';
});
