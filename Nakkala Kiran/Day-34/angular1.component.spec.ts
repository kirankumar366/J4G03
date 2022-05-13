import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Angular1Component } from './angular1.component';

describe('Angular1Component', () => {
  let component: Angular1Component;
  let fixture: ComponentFixture<Angular1Component>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ Angular1Component ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(Angular1Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
