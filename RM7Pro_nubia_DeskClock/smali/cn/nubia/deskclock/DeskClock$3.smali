.class Lcn/nubia/deskclock/DeskClock$3;
.super Ljava/lang/Object;
.source "DeskClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/DeskClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/DeskClock;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/DeskClock;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/DeskClock;

    .prologue
    .line 445
    iput-object p1, p0, Lcn/nubia/deskclock/DeskClock$3;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$3;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$600(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->replaceTable()V

    .line 448
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    .line 449
    iget-object v0, p0, Lcn/nubia/deskclock/DeskClock$3;->this$0:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0}, Lcn/nubia/deskclock/DeskClock;->access$700(Lcn/nubia/deskclock/DeskClock;)Lcn/nubia/deskclock/ui/DeskClockViewPager;

    move-result-object v0

    sget-boolean v1, Lcn/nubia/deskclock/DeskClock;->mIsLaunching:Z

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/ui/DeskClockViewPager;->setDeleteMode(Z)V

    .line 450
    return-void
.end method
