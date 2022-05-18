.class Lcn/nubia/music/database/DAOAccessManager$a;
.super Ljava/lang/Object;
.source "DAOAccessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/database/DAOAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/database/DAOAccessManager;

.field private final b:Lcn/nubia/music/database/AccessRequest;


# direct methods
.method public constructor <init>(Lcn/nubia/music/database/DAOAccessManager;Lcn/nubia/music/database/AccessRequest;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/music/database/DAOAccessManager$a;->a:Lcn/nubia/music/database/DAOAccessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcn/nubia/music/database/DAOAccessManager$a;->b:Lcn/nubia/music/database/AccessRequest;

    .line 31
    return-void
.end method

.method static synthetic a(Lcn/nubia/music/database/DAOAccessManager$a;)Lcn/nubia/music/database/AccessRequest;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager$a;->b:Lcn/nubia/music/database/AccessRequest;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager$a;->b:Lcn/nubia/music/database/AccessRequest;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/database/AccessRequest;->setThread(Ljava/lang/Thread;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager$a;->b:Lcn/nubia/music/database/AccessRequest;

    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/database/DAOAccessManager$a;->b:Lcn/nubia/music/database/AccessRequest;

    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->accessInBackground()V

    goto :goto_0
.end method
