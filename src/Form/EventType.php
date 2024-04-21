<?php

namespace App\Form;
use App\Form\FilterType;
use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            
            ->add('description', TextareaType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
                ])
                ->add('image', null, ['attr' => [ 'class' => 'form-control']])
                ->add('capacity', null, ['attr' => [ 'class' => 'form-control']])
                ->add('contact_email', null, ['attr' => [ 'class' => 'form-control']])
                ->add('contact_phone', null, ['attr' => [ 'class' => 'form-control']])
                ->add('event_address', null, ['attr' => [ 'class' => 'form-control']])
                ->add('event_url', null, ['attr' => [ 'class' => 'form-control']])
                ->add('type', ChoiceType::class, [
                    'choices' => ['Music' => 'Music', 'Sport' => 'Sport', 'Movie' => 'Movie'],
                    'attr' => ['class' => 'form-select', 'style' => 'margin-bottom:15px']])
                    ->add('date_time', DateTimeType::class, [
                        'attr' => ['style' => 'margin-bottom:15px']])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
