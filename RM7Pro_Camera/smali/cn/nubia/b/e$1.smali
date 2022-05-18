.class Lcn/nubia/b/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/b/e;->a(Ljava/lang/String;Lcn/nubia/b/d$c;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/d$c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/b/e;


# direct methods
.method constructor <init>(Lcn/nubia/b/e;Lcn/nubia/b/d$c;Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcn/nubia/b/e$1;->c:Lcn/nubia/b/e;

    iput-object p2, p0, Lcn/nubia/b/e$1;->a:Lcn/nubia/b/d$c;

    iput-object p3, p0, Lcn/nubia/b/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcn/nubia/b/e$1;->a:Lcn/nubia/b/d$c;

    iget-object v1, p0, Lcn/nubia/b/e$1;->c:Lcn/nubia/b/e;

    invoke-static {v1}, Lcn/nubia/b/e;->a(Lcn/nubia/b/e;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/b/e$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/d;

    invoke-virtual {v0, v1}, Lcn/nubia/b/d$c;->c(Lcn/nubia/b/d;)V

    return-void
.end method
