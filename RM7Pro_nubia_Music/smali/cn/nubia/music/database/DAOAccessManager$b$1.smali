.class Lcn/nubia/music/database/DAOAccessManager$b$1;
.super Ljava/lang/Thread;
.source "DAOAccessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/database/DAOAccessManager$b;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/database/DAOAccessManager$b;


# direct methods
.method constructor <init>(Lcn/nubia/music/database/DAOAccessManager$b;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcn/nubia/music/database/DAOAccessManager$b$1;->a:Lcn/nubia/music/database/DAOAccessManager$b;

    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 60
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 61
    return-void
.end method
