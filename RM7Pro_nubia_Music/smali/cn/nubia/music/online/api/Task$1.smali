.class Lcn/nubia/music/online/api/Task$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/online/api/Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcn/nubia/music/online/api/Task;


# direct methods
.method constructor <init>(Lcn/nubia/music/online/api/Task;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/music/online/api/Task$1;->b:Lcn/nubia/music/online/api/Task;

    iput-object p2, p0, Lcn/nubia/music/online/api/Task$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/music/online/api/Task$1;->b:Lcn/nubia/music/online/api/Task;

    iget-object v1, p0, Lcn/nubia/music/online/api/Task$1;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/online/api/Task;->onPost(Ljava/lang/Object;I)V

    .line 75
    return-void
.end method
