.class Lcn/nubia/music/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcn/nubia/music/MainActivity$8;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcn/nubia/music/MainActivity$8;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$1500(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/ui/IndicatorLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/ui/IndicatorLayout;->scroll(IF)V

    .line 490
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MainActivity$8;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v1}, Lcn/nubia/music/MainActivity;->access$1200(Lcn/nubia/music/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getOffscreenPageLimit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcn/nubia/music/MainActivity$8;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$1300(Lcn/nubia/music/MainActivity;)V

    .line 481
    sput p1, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    .line 482
    iget-object v0, p0, Lcn/nubia/music/MainActivity$8;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/MainActivity;->access$1100(Lcn/nubia/music/MainActivity;I)V

    .line 483
    iget-object v0, p0, Lcn/nubia/music/MainActivity$8;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0, p1}, Lcn/nubia/music/MainActivity;->access$1400(Lcn/nubia/music/MainActivity;I)V

    .line 484
    return-void
.end method
