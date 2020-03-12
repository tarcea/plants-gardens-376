import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  const select2Input = $('.select2');
  if (select2Input) {
    select2Input.select2();
  };
};

export { initSelect2 };
