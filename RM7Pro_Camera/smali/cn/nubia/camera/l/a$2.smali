.class Lcn/nubia/camera/l/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/l/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/l/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/l/a;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcn/nubia/camera/l/a$2;->a:Lcn/nubia/camera/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcn/nubia/camera/l/a$2;->a:Lcn/nubia/camera/l/a;

    invoke-static {v0}, Lcn/nubia/camera/l/a;->c(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/l/a$b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/l/a$b;->sendEmptyMessage(I)Z

    return-void
.end method
