.class Lcn/nubia/notepad/NoteListActivity$TimeObserver;
.super Landroid/database/ContentObserver;
.source "NoteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NoteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeObserver"
.end annotation


# instance fields
.field myActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NoteListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcn/nubia/notepad/NoteListActivity;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "noteListActivity"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 811
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 812
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity$TimeObserver;->myActivity:Ljava/lang/ref/WeakReference;

    .line 813
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 817
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$TimeObserver;->myActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NoteListActivity;

    .line 818
    .local v0, "activity":Lcn/nubia/notepad/NoteListActivity;
    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Lcn/nubia/notepad/NoteListActivity;->handleTimeObserverOnChange()V

    .line 822
    :cond_0
    return-void
.end method
