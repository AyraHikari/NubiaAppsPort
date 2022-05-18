.class Lcn/nubia/camera/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/c;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/c$1;->a:Lcn/nubia/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/c$1;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->a(Lcn/nubia/camera/c;)Lcn/nubia/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/a/a;->a(IZ)V

    return-void
.end method
