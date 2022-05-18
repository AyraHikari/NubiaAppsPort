.class Lcn/nubia/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:[Lcn/nubia/d/i;

.field private e:[B

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final g:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/d/c;->a:[B

    new-array v1, v0, [B

    .line 39
    fill-array-data v1, :array_1

    sput-object v1, Lcn/nubia/d/c;->b:[B

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/d/c;->c:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/d/i;

    .line 46
    iput-object v0, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcn/nubia/d/c;->g:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected a(Lcn/nubia/d/h;)Lcn/nubia/d/h;
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcn/nubia/d/h;->a()I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcn/nubia/d/c;->a(Lcn/nubia/d/h;I)Lcn/nubia/d/h;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Lcn/nubia/d/h;I)Lcn/nubia/d/h;
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-static {p2}, Lcn/nubia/d/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcn/nubia/d/c;->c(I)Lcn/nubia/d/i;

    move-result-object p2

    .line 183
    invoke-virtual {p2, p1}, Lcn/nubia/d/i;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(I[B)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected a(Lcn/nubia/d/i;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    invoke-virtual {p1}, Lcn/nubia/d/i;->c()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected a(SI)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p2, p1}, Lcn/nubia/d/i;->b(S)V

    return-void
.end method

.method protected a([B)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/d/c;->e:[B

    return-void
.end method

.method protected a()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/d/c;->e:[B

    return-object v0
.end method

.method protected a(I)[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected b(I)Lcn/nubia/d/i;
    .locals 1

    .line 128
    invoke-static {p1}, Lcn/nubia/d/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/d/c;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected c(I)Lcn/nubia/d/i;
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcn/nubia/d/i;

    invoke-direct {v0, p1}, Lcn/nubia/d/i;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected d()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected e()Ljava/nio/ByteOrder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/d/c;->g:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 324
    :cond_1
    instance-of v2, p1, Lcn/nubia/d/c;

    if-eqz v2, :cond_7

    .line 325
    check-cast p1, Lcn/nubia/d/c;

    .line 326
    iget-object v2, p1, Lcn/nubia/d/c;->g:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcn/nubia/d/c;->g:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcn/nubia/d/c;->e:[B

    iget-object v3, p0, Lcn/nubia/d/c;->e:[B

    .line 328
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 331
    :goto_0
    iget-object v3, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 332
    iget-object v3, p1, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcn/nubia/d/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 337
    invoke-virtual {p1, v2}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v3

    .line 338
    invoke-virtual {p0, v2}, Lcn/nubia/d/c;->b(I)Lcn/nubia/d/i;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 339
    invoke-virtual {v3, v4}, Lcn/nubia/d/i;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method protected f()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/d/h;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v1, p0, Lcn/nubia/d/c;->d:[Lcn/nubia/d/i;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {v5}, Lcn/nubia/d/i;->b()[Lcn/nubia/d/h;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 261
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 262
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method
