.class Lcn/nubia/music/online/api/Task$2;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/online/api/Task;->timeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/online/api/Task;


# direct methods
.method constructor <init>(Lcn/nubia/music/online/api/Task;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/music/online/api/Task$2;->a:Lcn/nubia/music/online/api/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/music/online/api/Task$2;->a:Lcn/nubia/music/online/api/Task;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/online/api/Task;->onPost(Ljava/lang/Object;I)V

    .line 101
    return-void
.end method
