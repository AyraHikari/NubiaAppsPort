.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi23Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi18Impl;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi18Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 313
    return-void
.end method
