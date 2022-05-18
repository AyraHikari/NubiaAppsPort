.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi27Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;
.source "TextViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1b
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi27Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 533
    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method public getAutoSizeTextType(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 513
    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "autoSizeMinTextSize"    # I
    .param p3, "autoSizeMaxTextSize"    # I
    .param p4, "autoSizeStepGranularity"    # I
    .param p5, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 503
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "presetSizes"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 508
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 509
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "autoSizeTextType"    # I

    .prologue
    .line 491
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    .line 492
    return-void
.end method
