.class Lcn/nubia/notepad/NotePadEditorActivity$LeftAndRightHandObserver;
.super Landroid/database/ContentObserver;
.source "NotePadEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NotePadEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeftAndRightHandObserver"
.end annotation


# instance fields
.field myActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/NotePadEditorActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "editorActivity"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1743
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$LeftAndRightHandObserver;->myActivity:Ljava/lang/ref/WeakReference;

    .line 1744
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1748
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$LeftAndRightHandObserver;->myActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/NotePadEditorActivity;

    .line 1749
    .local v0, "activity":Lcn/nubia/notepad/NotePadEditorActivity;
    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateLeftAndRightHandView()V

    .line 1750
    return-void
.end method
