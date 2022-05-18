.class Lcn/nubia/camera/al/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/al/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcn/nubia/camera/al/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcn/nubia/camera/al/a$a;

.field final synthetic c:Lcn/nubia/camera/al/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/al/a;Lcn/nubia/camera/al/a$a;I)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/al/a$b;->c:Lcn/nubia/camera/al/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p3, p0, Lcn/nubia/camera/al/a$b;->a:I

    .line 134
    iput-object p2, p0, Lcn/nubia/camera/al/a$b;->b:Lcn/nubia/camera/al/a$a;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/al/a$b;)I
    .locals 2

    .line 152
    iget v0, p0, Lcn/nubia/camera/al/a$b;->a:I

    invoke-static {v0}, Lcn/nubia/camera/al/a;->a(I)I

    move-result v0

    iget v1, p1, Lcn/nubia/camera/al/a$b;->a:I

    invoke-static {v1}, Lcn/nubia/camera/al/a;->a(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 154
    :cond_0
    iget v0, p0, Lcn/nubia/camera/al/a$b;->a:I

    invoke-static {v0}, Lcn/nubia/camera/al/a;->a(I)I

    move-result v0

    iget p1, p1, Lcn/nubia/camera/al/a$b;->a:I

    invoke-static {p1}, Lcn/nubia/camera/al/a;->a(I)I

    move-result p1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 128
    check-cast p1, Lcn/nubia/camera/al/a$b;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/al/a$b;->a(Lcn/nubia/camera/al/a$b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    check-cast p1, Lcn/nubia/camera/al/a$b;

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/al/a$b;->b:Lcn/nubia/camera/al/a$a;

    iget-object p1, p1, Lcn/nubia/camera/al/a$b;->b:Lcn/nubia/camera/al/a$a;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 147
    iget v1, p0, Lcn/nubia/camera/al/a$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/al/a$b;->b:Lcn/nubia/camera/al/a$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
