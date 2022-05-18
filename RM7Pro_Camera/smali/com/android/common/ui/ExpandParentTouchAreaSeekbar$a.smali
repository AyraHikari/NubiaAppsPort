.class Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

.field private b:Landroid/widget/SeekBar;

.field private c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private d:[I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;Landroid/view/View;Landroid/widget/SeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->a:Lcom/android/common/ui/ExpandParentTouchAreaSeekbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->e:Z

    .line 53
    iput-object p3, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    .line 54
    iput-object p4, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 55
    invoke-static {p2, p3}, Lcom/android/common/ui/i;->a(Landroid/view/View;Landroid/view/View;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->d:[I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 64
    iget-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    iget-object v2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->d:[I

    aget v2, v2, v0

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Lcom/android/common/ui/i;->a(III)I

    move-result p2

    mul-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    .line 76
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getWidth()I

    move-result p2

    div-int/2addr p1, p2

    .line 77
    iget-boolean p2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->e:Z

    if-eqz p2, :cond_2

    .line 78
    iget-object p2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    .line 86
    iget-object p2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    invoke-interface {p1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_5

    .line 69
    iget-object p2, p0, Lcom/android/common/ui/ExpandParentTouchAreaSeekbar$a;->b:Landroid/widget/SeekBar;

    invoke-interface {p1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v0
.end method
