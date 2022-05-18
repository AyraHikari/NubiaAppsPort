.class Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;
.super Landroid/database/ContentObserver;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/AlarmClockFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmObserver"
.end annotation


# instance fields
.field adapterWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/adapter/AlarmClockAdapter;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmClockFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/fragment/AlarmClockFragment;",
            ">;"
        }
    .end annotation
.end field

.field mDeskClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/DeskClock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Landroid/os/Handler;)V
    .locals 1
    .param p1, "clockFragment"    # Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 80
    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->mAlarmClockFragment:Ljava/lang/ref/WeakReference;

    .line 81
    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->mDeskClock:Ljava/lang/ref/WeakReference;

    .line 82
    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->adapterWeakReference:Ljava/lang/ref/WeakReference;

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->mAlarmClockFragment:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "clockFragment":Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->mAlarmClockFragment:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->mAlarmClockFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->mAlarmClockFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "clockFragment":Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    check-cast v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;

    .line 95
    .restart local v0    # "clockFragment":Lcn/nubia/deskclock/fragment/AlarmClockFragment;
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$000(Lcn/nubia/deskclock/fragment/AlarmClockFragment;)Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->adapterWeakReference:Ljava/lang/ref/WeakReference;

    .line 96
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->adapterWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->adapterWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcn/nubia/deskclock/fragment/AlarmClockFragment$AlarmObserver;->adapterWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    invoke-virtual {v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->notifyDataSetChanged()V

    .line 98
    iget-object v1, v0, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->mActivity:Lcn/nubia/deskclock/DeskClock;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/AlarmClockFragment;->access$100(Lcn/nubia/deskclock/fragment/AlarmClockFragment;Lcn/nubia/deskclock/DeskClock;)V

    .line 100
    :cond_1
    return-void
.end method
