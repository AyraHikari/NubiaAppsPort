.class public Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 34
    invoke-super {p0}, Landroid/widget/SeekBar;->onAttachedToWindow()V

    .line 35
    invoke-virtual {p0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;

    invoke-virtual {p0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v1, p0, v2, p0, v3}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;-><init>(Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 42
    iput-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 43
    invoke-virtual {p0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;

    invoke-virtual {p0}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;-><init>(Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
