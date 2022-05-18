.class public Lcn/nubia/camera/w/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/w/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/w/b;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/b;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/w/d$a;->a:Lcn/nubia/camera/w/b;

    .line 41
    iput p2, p0, Lcn/nubia/camera/w/d$a;->b:I

    .line 42
    iput p3, p0, Lcn/nubia/camera/w/d$a;->c:I

    .line 43
    iput p4, p0, Lcn/nubia/camera/w/d$a;->d:I

    .line 44
    iput-object p5, p0, Lcn/nubia/camera/w/d$a;->e:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcn/nubia/camera/w/d$a;->f:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcn/nubia/camera/w/d$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/w/b;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/w/d$a;->a:Lcn/nubia/camera/w/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/w/d$a;->f:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 54
    iget v0, p0, Lcn/nubia/camera/w/d$a;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/w/d$a;->g:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    .line 58
    iget v0, p0, Lcn/nubia/camera/w/d$a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 62
    iget v0, p0, Lcn/nubia/camera/w/d$a;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/w/d$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/w/d$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/w/d$a;->g:Ljava/lang/String;

    return-object v0
.end method
