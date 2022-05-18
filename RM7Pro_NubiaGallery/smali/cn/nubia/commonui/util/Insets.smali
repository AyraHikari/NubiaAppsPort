.class public Lcn/nubia/commonui/util/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final NONE:Lcn/nubia/commonui/util/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcn/nubia/commonui/util/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcn/nubia/commonui/util/Insets;-><init>(IIII)V

    sput-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcn/nubia/commonui/util/Insets;->left:I

    .line 40
    iput p2, p0, Lcn/nubia/commonui/util/Insets;->top:I

    .line 41
    iput p3, p0, Lcn/nubia/commonui/util/Insets;->right:I

    .line 42
    iput p4, p0, Lcn/nubia/commonui/util/Insets;->bottom:I

    return-void
.end method

.method public static of(IIII)Lcn/nubia/commonui/util/Insets;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 59
    sget-object p0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lcn/nubia/commonui/util/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/commonui/util/Insets;-><init>(IIII)V

    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Lcn/nubia/commonui/util/Insets;
    .locals 3

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/commonui/util/Insets;->of(IIII)Lcn/nubia/commonui/util/Insets;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    check-cast p1, Lcn/nubia/commonui/util/Insets;

    .line 90
    iget v2, p0, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v3, p1, Lcn/nubia/commonui/util/Insets;->bottom:I

    if-eq v2, v3, :cond_2

    return v1

    .line 91
    :cond_2
    iget v2, p0, Lcn/nubia/commonui/util/Insets;->left:I

    iget v3, p1, Lcn/nubia/commonui/util/Insets;->left:I

    if-eq v2, v3, :cond_3

    return v1

    .line 92
    :cond_3
    iget v2, p0, Lcn/nubia/commonui/util/Insets;->right:I

    iget v3, p1, Lcn/nubia/commonui/util/Insets;->right:I

    if-eq v2, v3, :cond_4

    return v1

    .line 93
    :cond_4
    iget v2, p0, Lcn/nubia/commonui/util/Insets;->top:I

    iget p1, p1, Lcn/nubia/commonui/util/Insets;->top:I

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

    .line 100
    iget v0, p0, Lcn/nubia/commonui/util/Insets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget v1, p0, Lcn/nubia/commonui/util/Insets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget v1, p0, Lcn/nubia/commonui/util/Insets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget v1, p0, Lcn/nubia/commonui/util/Insets;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/util/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/util/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/util/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/util/Insets;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
