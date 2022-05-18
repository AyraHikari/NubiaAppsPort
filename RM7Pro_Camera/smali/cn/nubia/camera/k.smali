.class public Lcn/nubia/camera/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k$a;
    }
.end annotation


# static fields
.field private static final c:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private d:Lcn/nubia/camera/k$a;

.field private e:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/k;->c:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f03b6
        0x7f0f03b5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcn/nubia/camera/k;->b:I

    .line 27
    new-instance v0, Lcn/nubia/camera/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/k$a;-><init>(Lcn/nubia/camera/k;Lcn/nubia/camera/k$1;)V

    iput-object v0, p0, Lcn/nubia/camera/k;->d:Lcn/nubia/camera/k$a;

    .line 28
    iput-object v1, p0, Lcn/nubia/camera/k;->e:Landroid/widget/Toast;

    .line 43
    iput-object p1, p0, Lcn/nubia/camera/k;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/k;->e:Landroid/widget/Toast;

    invoke-direct {p0, v0}, Lcn/nubia/camera/k;->a(Landroid/widget/Toast;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcn/nubia/camera/k;->e:Landroid/widget/Toast;

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcn/nubia/camera/k;->b:I

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/k;->d:Lcn/nubia/camera/k$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k$a;->removeMessages(I)V

    return-void
.end method

.method private a(Landroid/widget/Toast;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/k;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/camera/k;->a()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
