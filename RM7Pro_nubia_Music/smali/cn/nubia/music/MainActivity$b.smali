.class Lcn/nubia/music/MainActivity$b;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcn/nubia/music/MainActivity;I)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcn/nubia/music/MainActivity$b;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/MainActivity$b;->b:I

    .line 405
    iput p2, p0, Lcn/nubia/music/MainActivity$b;->b:I

    .line 406
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcn/nubia/music/MainActivity$b;->a:Lcn/nubia/music/MainActivity;

    iget v1, p0, Lcn/nubia/music/MainActivity$b;->b:I

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$1100(Lcn/nubia/music/MainActivity;I)V

    .line 411
    sget v0, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    iget v1, p0, Lcn/nubia/music/MainActivity$b;->b:I

    if-eq v0, v1, :cond_0

    .line 412
    iget v0, p0, Lcn/nubia/music/MainActivity$b;->b:I

    sput v0, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabClickListener, mTabViewPager.setCurrentItem index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/MainActivity$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcn/nubia/music/MainActivity$b;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$1200(Lcn/nubia/music/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    sget v1, Lcn/nubia/music/MainActivity;->mCurrentTabIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 416
    :cond_0
    return-void
.end method
