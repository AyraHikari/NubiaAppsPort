.class public Lcn/nubia/camera/aw/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aw/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcn/nubia/camera/af/b;

.field public b:Lcn/nubia/camera/af/a;

.field public c:Lcn/nubia/camera/q/i;

.field final synthetic d:Lcn/nubia/camera/aw/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/aw/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/camera/aw/a$a;->d:Lcn/nubia/camera/aw/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcn/nubia/camera/aw/a$a;->a:Lcn/nubia/camera/af/b;

    .line 54
    iput-object p3, p0, Lcn/nubia/camera/aw/a$a;->b:Lcn/nubia/camera/af/a;

    .line 55
    iput-object p4, p0, Lcn/nubia/camera/aw/a$a;->c:Lcn/nubia/camera/q/i;

    return-void
.end method
