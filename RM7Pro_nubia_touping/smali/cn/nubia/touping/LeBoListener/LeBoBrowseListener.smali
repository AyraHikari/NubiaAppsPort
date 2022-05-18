.class public Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;
.super Ljava/lang/Object;
.source "LeBoBrowseListener.java"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IBrowseListener;


# static fields
.field public static final MSG_SEARCH_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LeBoBrowseListener"


# instance fields
.field private context:Landroid/content/Context;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mUiHandler"    # Landroid/os/Handler;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->mUiHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBrowse(ILjava/util/List;)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->mUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener$1;-><init>(Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 45
    :cond_1
    if-eqz p2, :cond_2

    .line 46
    const-string v0, "LeBoBrowseListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "list.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcn/nubia/touping/LeBoListener/LeBoBrowseListener;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
