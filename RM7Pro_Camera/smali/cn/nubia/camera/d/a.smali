.class public Lcn/nubia/camera/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true


# instance fields
.field private b:Lcn/nubia/camera/d/e;

.field private c:Lcn/nubia/camera/d/b;

.field private d:Lcn/nubia/camera/d/c;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    iput-object v0, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    .line 19
    sget-object v0, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    iput-object v0, p0, Lcn/nubia/camera/d/a;->c:Lcn/nubia/camera/d/b;

    .line 20
    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    iput-object v0, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/d/a;->e:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 124
    sget-boolean v0, Lcn/nubia/camera/d/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraStateManager"

    .line 125
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Lcn/nubia/camera/d/c;)Z
    .locals 1

    .line 112
    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/d/c;->f:Lcn/nubia/camera/d/c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/d/c;->g:Lcn/nubia/camera/d/c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(Lcn/nubia/camera/d/b;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/d/a;->a(Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcn/nubia/camera/d/a;->c:Lcn/nubia/camera/d/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/d/c;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFunction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/d/a;->a(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Z)V

    .line 72
    iput-object p1, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    return-void
.end method

.method public a(Lcn/nubia/camera/d/e;)V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/d/a;->a(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Z)V

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    return-void
.end method

.method public varargs a([Lcn/nubia/camera/d/d;)V
    .locals 4

    .line 38
    array-length v0, p1

    .line 39
    iget-object v1, p0, Lcn/nubia/camera/d/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    iget-object v2, p0, Lcn/nubia/camera/d/a;->e:Ljava/util/ArrayList;

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcn/nubia/camera/d/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-interface {v3}, Lcn/nubia/camera/d/d;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/camera/d/a;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/d/d;)Z
    .locals 4

    .line 24
    iget-object v0, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    iget-object v1, p0, Lcn/nubia/camera/d/a;->c:Lcn/nubia/camera/d/b;

    iget-object v2, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    iget-object v3, p0, Lcn/nubia/camera/d/a;->e:Ljava/util/ArrayList;

    .line 25
    invoke-interface {p1, v0, v1, v2, v3}, Lcn/nubia/camera/d/d;->a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/d/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set state to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraStateManager"

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public b()Lcn/nubia/camera/d/b;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/d/a;->c:Lcn/nubia/camera/d/b;

    return-object v0
.end method

.method public b(Lcn/nubia/camera/d/c;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 93
    invoke-static {p1}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    invoke-static {p1}, Lcn/nubia/camera/d/a;->c(Lcn/nubia/camera/d/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetFunctionState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/d/a;->a(Ljava/lang/String;)V

    .line 95
    sget-object p1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    iput-object p1, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    :cond_1
    return-void
.end method

.method public b(Lcn/nubia/camera/d/e;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetUIState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/d/a;->a(Ljava/lang/String;)V

    .line 82
    sget-object p1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    iput-object p1, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    :cond_1
    return-void
.end method

.method public c()Lcn/nubia/camera/d/e;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    return-object v0
.end method

.method public d()Lcn/nubia/camera/d/c;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/d/a;->c:Lcn/nubia/camera/d/b;

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentState(UI, Device, Function) = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/d/a;->b:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/d/a;->c:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/d/a;->d:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); enbleState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/d/a;->e:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
