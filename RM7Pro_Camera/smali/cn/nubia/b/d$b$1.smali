.class Lcn/nubia/b/d$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/b/d$b;->a(Lcn/nubia/b/a$c;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a$c;

.field final synthetic b:Lcn/nubia/b/d$b;


# direct methods
.method constructor <init>(Lcn/nubia/b/d$b;Lcn/nubia/b/a$c;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcn/nubia/b/d$b$1;->b:Lcn/nubia/b/d$b;

    iput-object p2, p0, Lcn/nubia/b/d$b$1;->a:Lcn/nubia/b/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcn/nubia/b/d$b$1;->a:Lcn/nubia/b/a$c;

    iget-object v1, p0, Lcn/nubia/b/d$b$1;->b:Lcn/nubia/b/d$b;

    invoke-static {v1}, Lcn/nubia/b/d$b;->a(Lcn/nubia/b/d$b;)Lcn/nubia/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->a(Lcn/nubia/b/a;)V

    return-void
.end method
