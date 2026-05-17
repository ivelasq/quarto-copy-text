function copyDivToClipboard(id) {
  const el = document.getElementById(id);
  const clone = el.cloneNode(true);
  const btn = clone.querySelector('.copy-btn');
  if (btn) btn.remove();

  const htmlContent = clone.innerHTML.trim();
  const textContent = clone.innerText.trim();

  const clipboardItem = new ClipboardItem({
    'text/html': new Blob([htmlContent], { type: 'text/html' }),
    'text/plain': new Blob([textContent], { type: 'text/plain' })
  });

  navigator.clipboard.write([clipboardItem]).then(() => {
    const originalBtn = el.querySelector('.copy-btn');
    originalBtn.innerText = "Copied!";
    setTimeout(() => { originalBtn.innerText = "Copy"; }, 2000);
  }).catch(err => {
    console.error('Failed to copy: ', err);
  });
}
