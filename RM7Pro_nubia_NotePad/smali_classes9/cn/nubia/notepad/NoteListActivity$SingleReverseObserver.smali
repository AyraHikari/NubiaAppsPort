.class Lcn/nubia/notepad/NoteListActivity$SingleReverseObserver;
.super Landroid/database/ContentObserver;
.source "NoteListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NoteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleReverseObserver"
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
    .line 777
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 778
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NoteListActivity$SingleReverseObserver;->myActivity:Ljava/lang/ref/WeakReference;

    .line 779
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 783
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$SingleReverseObserver;->myActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NoteListActivity;

    .line 784
    .local v0, "activity":Lcn/nubia/notepad/NoteListActivity;
    if-eqz v0, :cond_0

    .line 785
    invoke-virtual {v0}, Lcn/nubia/notepad/NoteListActivity;->handleSingleReverseObserverOnChange()V

    .line 787
    :cond_0
    return-void
.end method
