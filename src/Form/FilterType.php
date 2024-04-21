<?php


namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FilterType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('type', ChoiceType::class, [
                'label' => 'Select event type',
                'choices' => [
                    'All' => '',
                    'Music' => 'Music',
                    'Sport' => 'Sport',
                    'Movie' => 'Movie',
                ],
                'required' => false,
                'attr' => [
                    'class' => 'form-select',
                    'aria-label' => 'Select event type',
                ],
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}