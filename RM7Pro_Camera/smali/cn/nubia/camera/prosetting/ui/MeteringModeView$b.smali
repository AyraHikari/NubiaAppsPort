.class Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prosetting/ui/MeteringModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

.field private b:F

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prosetting/ui/MeteringModeView;FLjava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->a:Lcn/nubia/camera/prosetting/ui/MeteringModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p2, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->b:F

    .line 291
    iput-object p3, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 295
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->b:F

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MeteringModeView$b;->c:Ljava/lang/String;

    return-object v0
.end method
