.class public Lcom/zte/mifavor/MifavorComponentsViewInflater;
.super Lcom/google/android/material/theme/MaterialComponentsViewInflater;
.source "MifavorComponentsViewInflater.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/theme/MaterialComponentsViewInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected createButton(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    new-instance p0, Landroidx/appcompat/widget/AppCompatButton;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method
