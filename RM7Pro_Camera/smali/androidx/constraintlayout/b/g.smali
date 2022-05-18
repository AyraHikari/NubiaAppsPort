.class public Landroidx/constraintlayout/b/g;
.super Landroidx/constraintlayout/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/b/g$a;
    }
.end annotation


# instance fields
.field g:Landroidx/constraintlayout/b/g$a;

.field h:Landroidx/constraintlayout/b/c;

.field private i:I

.field private j:[Landroidx/constraintlayout/b/h;

.field private k:[Landroidx/constraintlayout/b/h;

.field private l:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/b/c;)V
    .locals 2

    .line 160
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/b;-><init>(Landroidx/constraintlayout/b/c;)V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Landroidx/constraintlayout/b/g;->i:I

    new-array v1, v0, [Landroidx/constraintlayout/b/h;

    .line 30
    iput-object v1, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    new-array v0, v0, [Landroidx/constraintlayout/b/h;

    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/b/g;->k:[Landroidx/constraintlayout/b/h;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/constraintlayout/b/g;->l:I

    .line 33
    new-instance v0, Landroidx/constraintlayout/b/g$a;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/b/g$a;-><init>(Landroidx/constraintlayout/b/g;Landroidx/constraintlayout/b/g;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    .line 161
    iput-object p1, p0, Landroidx/constraintlayout/b/g;->h:Landroidx/constraintlayout/b/c;

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/b/g;Landroidx/constraintlayout/b/h;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/g;->f(Landroidx/constraintlayout/b/h;)V

    return-void
.end method

.method private final e(Landroidx/constraintlayout/b/h;)V
    .locals 5

    .line 203
    iget v0, p0, Landroidx/constraintlayout/b/g;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 204
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/b/h;

    iput-object v0, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    .line 205
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/b/h;

    iput-object v0, p0, Landroidx/constraintlayout/b/g;->k:[Landroidx/constraintlayout/b/h;

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    iget v2, p0, Landroidx/constraintlayout/b/g;->l:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    .line 208
    iput v2, p0, Landroidx/constraintlayout/b/g;->l:I

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    .line 210
    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/b/h;->b:I

    iget v2, p1, Landroidx/constraintlayout/b/h;->b:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    move v2, v0

    .line 211
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/b/g;->l:I

    if-ge v2, v3, :cond_1

    .line 212
    iget-object v3, p0, Landroidx/constraintlayout/b/g;->k:[Landroidx/constraintlayout/b/h;

    iget-object v4, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->k:[Landroidx/constraintlayout/b/h;

    new-instance v4, Landroidx/constraintlayout/b/g$1;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/b/g$1;-><init>(Landroidx/constraintlayout/b/g;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 220
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/b/g;->l:I

    if-ge v0, v2, :cond_2

    .line 221
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    iget-object v3, p0, Landroidx/constraintlayout/b/g;->k:[Landroidx/constraintlayout/b/h;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/b/h;->a:Z

    .line 226
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method private final f(Landroidx/constraintlayout/b/h;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 230
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/b/g;->l:I

    if-ge v1, v2, :cond_2

    .line 231
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 232
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/b/g;->l:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 233
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 235
    iput v2, p0, Landroidx/constraintlayout/b/g;->l:I

    .line 236
    iput-boolean v0, p1, Landroidx/constraintlayout/b/h;->a:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/b/d;[Z)Landroidx/constraintlayout/b/h;
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    move v1, p1

    .line 174
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/b/g;->l:I

    if-ge v0, v2, :cond_3

    .line 175
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    aget-object v2, v2, v0

    .line 176
    iget v3, v2, Landroidx/constraintlayout/b/h;->b:I

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 179
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/b/g$a;->a(Landroidx/constraintlayout/b/h;)V

    if-ne v1, p1, :cond_1

    .line 181
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/g$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 184
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    iget-object v3, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/b/g$a;->b(Landroidx/constraintlayout/b/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 191
    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    aget-object p1, p1, v1

    return-object p1
.end method

.method public a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;Z)V
    .locals 5

    .line 244
    iget-object p1, p2, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object p3, p2, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    .line 250
    invoke-interface {p3}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 252
    invoke-interface {p3, v1}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v2

    .line 253
    invoke-interface {p3, v1}, Landroidx/constraintlayout/b/b$a;->b(I)F

    move-result v3

    .line 254
    iget-object v4, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/b/g$a;->a(Landroidx/constraintlayout/b/h;)V

    .line 255
    iget-object v4, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v4, p1, v3}, Landroidx/constraintlayout/b/g$a;->a(Landroidx/constraintlayout/b/h;F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-direct {p0, v2}, Landroidx/constraintlayout/b/g;->e(Landroidx/constraintlayout/b/h;)V

    .line 258
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/b/g;->b:F

    iget v4, p2, Landroidx/constraintlayout/b/b;->b:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Landroidx/constraintlayout/b/g;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/g;->f(Landroidx/constraintlayout/b/h;)V

    return-void
.end method

.method public d(Landroidx/constraintlayout/b/h;)V
    .locals 3

    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/g$a;->a(Landroidx/constraintlayout/b/h;)V

    .line 197
    iget-object v0, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/g$a;->b()V

    .line 198
    iget-object v0, p1, Landroidx/constraintlayout/b/h;->h:[F

    iget v1, p1, Landroidx/constraintlayout/b/h;->d:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 199
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/g;->e(Landroidx/constraintlayout/b/h;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 166
    iget v0, p0, Landroidx/constraintlayout/b/g;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Landroidx/constraintlayout/b/g;->l:I

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Landroidx/constraintlayout/b/g;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " goal -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/b/g;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/b/g;->l:I

    if-ge v1, v2, :cond_0

    .line 268
    iget-object v2, p0, Landroidx/constraintlayout/b/g;->j:[Landroidx/constraintlayout/b/h;

    aget-object v2, v2, v1

    .line 269
    iget-object v3, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/b/g$a;->a(Landroidx/constraintlayout/b/h;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/b/g;->g:Landroidx/constraintlayout/b/g$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
