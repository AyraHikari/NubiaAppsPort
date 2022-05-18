.class Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->c(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-virtual {p3}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->b(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->d(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->e(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 96
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->g(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-virtual {p3}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->f(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer$1;->a:Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
