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

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcn/nubia/commonui/util/Insets;

    invoke-direct {v0, v1, v1, v1, v1}, Lcn/nubia/commonui/util/Insets;-><init>(IIII)V

    sput-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
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

    .line 43
    return-void
.end method

.method public static of(IIII)Lcn/nubia/commonui/util/Insets;
    .locals 1
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 58
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 59
    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/nubia/commonui/util/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/commonui/util/Insets;-><init>(IIII)V

    goto :goto_0
.end method

.method public static of(Landroid/graphics/Rect;)Lcn/nubia/commonui/util/Insets;
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 72
    if-nez p0, :cond_0

    sget-object v0, Lcn/nubia/commonui/util/Insets;->NONE:Lcn/nubia/commonui/util/Insets;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/commonui/util/Insets;->of(IIII)Lcn/nubia/commonui/util/Insets;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 88
    check-cast v0, Lcn/nubia/commonui/util/Insets;

    .line 90
    .local v0, "insets":Lcn/nubia/commonui/util/Insets;
    iget v3, p0, Lcn/nubia/commonui/util/Insets;->bottom:I

    iget v4, v0, Lcn/nubia/commonui/util/Insets;->bottom:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 91
    :cond_4
    iget v3, p0, Lcn/nubia/commonui/util/Insets;->left:I

    iget v4, v0, Lcn/nubia/commonui/util/Insets;->left:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 92
    :cond_5
    iget v3, p0, Lcn/nubia/commonui/util/Insets;->right:I

    iget v4, v0, Lcn/nubia/commonui/util/Insets;->right:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 93
    :cond_6
    iget v3, p0, Lcn/nubia/commonui/util/Insets;->top:I

    iget v4, v0, Lcn/nubia/commonui/util/Insets;->top:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 100
    iget v0, p0, Lcn/nubia/commonui/util/Insets;->left:I

    .line 101
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcn/nubia/commonui/util/Insets;->top:I

    add-int v0, v1, v2

    .line 102
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcn/nubia/commonui/util/Insets;->right:I

    add-int v0, v1, v2

    .line 103
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcn/nubia/commonui/util/Insets;->bottom:I

    add-int v0, v1, v2

    .line 104
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
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
