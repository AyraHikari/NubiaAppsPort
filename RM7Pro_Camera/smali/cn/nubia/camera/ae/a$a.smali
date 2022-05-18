.class Lcn/nubia/camera/ae/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ae/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/camera/af/a;

.field b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/camera/ae/a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ae/a;Lcn/nubia/camera/af/a;Ljava/lang/String;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcn/nubia/camera/ae/a$a;->c:Lcn/nubia/camera/ae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p2, p0, Lcn/nubia/camera/ae/a$a;->a:Lcn/nubia/camera/af/a;

    .line 636
    iput-object p3, p0, Lcn/nubia/camera/ae/a$a;->b:Ljava/lang/String;

    return-void
.end method
