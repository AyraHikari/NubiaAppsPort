.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarObserver;
.super Landroid/database/ContentObserver;
.source "NubiaMorePopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NaviBarObserver"
.end annotation


# instance fields
.field private myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 417
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarObserver;->myHandler:Landroid/os/Handler;

    .line 418
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 423
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$NaviBarObserver;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 424
    return-void
.end method
