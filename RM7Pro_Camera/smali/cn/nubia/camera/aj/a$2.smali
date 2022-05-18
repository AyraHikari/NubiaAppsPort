.class Lcn/nubia/camera/aj/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/a;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/aj/a$2;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v0}, Lcn/nubia/camera/aj/a;->d(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aj/a$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aj/a$2$1;-><init>(Lcn/nubia/camera/aj/a$2;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method
