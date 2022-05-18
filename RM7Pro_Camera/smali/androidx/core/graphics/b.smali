.class public final Landroidx/core/graphics/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/core/graphics/b;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroidx/core/graphics/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/core/graphics/b;-><init>(IIII)V

    sput-object v0, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Landroidx/core/graphics/b;->b:I

    .line 45
    iput p2, p0, Landroidx/core/graphics/b;->c:I

    .line 46
    iput p3, p0, Landroidx/core/graphics/b;->d:I

    .line 47
    iput p4, p0, Landroidx/core/graphics/b;->e:I

    return-void
.end method

.method public static a(IIII)Landroidx/core/graphics/b;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 64
    sget-object p0, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Landroidx/core/graphics/b;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/core/graphics/b;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Insets;
    .locals 4

    .line 146
    iget v0, p0, Landroidx/core/graphics/b;->b:I

    iget v1, p0, Landroidx/core/graphics/b;->c:I

    iget v2, p0, Landroidx/core/graphics/b;->d:I

    iget v3, p0, Landroidx/core/graphics/b;->e:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Landroidx/core/graphics/b;

    .line 94
    iget v2, p0, Landroidx/core/graphics/b;->e:I

    iget v3, p1, Landroidx/core/graphics/b;->e:I

    if-eq v2, v3, :cond_2

    return v1

    .line 95
    :cond_2
    iget v2, p0, Landroidx/core/graphics/b;->b:I

    iget v3, p1, Landroidx/core/graphics/b;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 96
    :cond_3
    iget v2, p0, Landroidx/core/graphics/b;->d:I

    iget v3, p1, Landroidx/core/graphics/b;->d:I

    if-eq v2, v3, :cond_4

    return v1

    .line 97
    :cond_4
    iget v2, p0, Landroidx/core/graphics/b;->c:I

    iget p1, p1, Landroidx/core/graphics/b;->c:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget v0, p0, Landroidx/core/graphics/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v1, p0, Landroidx/core/graphics/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Landroidx/core/graphics/b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget v1, p0, Landroidx/core/graphics/b;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/graphics/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/graphics/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/graphics/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/graphics/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
