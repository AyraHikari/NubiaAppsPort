.class abstract Lorg/apache/commons/lang/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final IS_SYNTHETIC:Ljava/lang/reflect/Method;

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

.field static class$java$lang$reflect$Member:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "isSynthetic":Ljava/lang/reflect/Method;
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lorg/apache/commons/lang/SystemUtils;->isJavaVersionAtLeast(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    sget-object v1, Lorg/apache/commons/lang/reflect/MemberUtils;->class$java$lang$reflect$Member:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.reflect.Member"

    invoke-static {v1}, Lorg/apache/commons/lang/reflect/MemberUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/reflect/MemberUtils;->class$java$lang$reflect$Member:Ljava/lang/Class;

    :goto_0
    const-string v2, "isSynthetic"

    sget-object v3, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 55
    :cond_0
    :goto_1
    sput-object v0, Lorg/apache/commons/lang/reflect/MemberUtils;->IS_SYNTHETIC:Ljava/lang/reflect/Method;

    .line 59
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void

    .line 50
    :cond_1
    :try_start_1
    sget-object v1, Lorg/apache/commons/lang/reflect/MemberUtils;->class$java$lang$reflect$Member:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 3
    .param p0, "left"    # [Ljava/lang/Class;
    .param p1, "right"    # [Ljava/lang/Class;
    .param p2, "actual"    # [Ljava/lang/Class;

    .prologue
    .line 135
    invoke-static {p2, p0}, Lorg/apache/commons/lang/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    .line 136
    .local v0, "leftCost":F
    invoke-static {p2, p1}, Lorg/apache/commons/lang/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    .line 137
    .local v1, "rightCost":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 2
    .param p0, "srcClass"    # Ljava/lang/Class;
    .param p1, "destClass"    # Ljava/lang/Class;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-static {p0, p1}, Lorg/apache/commons/lang/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    .line 191
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    const/4 v0, 0x0

    .line 171
    .local v0, "cost":F
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Lorg/apache/commons/lang/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 188
    :cond_2
    if-nez p0, :cond_0

    .line 189
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    goto :goto_0

    .line 181
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 6
    .param p0, "srcClass"    # Ljava/lang/Class;
    .param p1, "destClass"    # Ljava/lang/Class;

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "cost":F
    move-object v0, p0

    .line 204
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    add-float/2addr v1, v5

    .line 207
    invoke-static {v0}, Lorg/apache/commons/lang/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v0, p1, :cond_2

    sget-object v3, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 210
    sget-object v3, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_1

    .line 211
    add-float/2addr v1, v5

    .line 212
    sget-object v3, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 213
    sget-object v3, Lorg/apache/commons/lang/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v3, v4

    .line 209
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_2
    return v1
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .locals 5
    .param p0, "srcArgs"    # [Ljava/lang/Class;
    .param p1, "destArgs"    # [Ljava/lang/Class;

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "totalCost":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 151
    aget-object v2, p0, v1

    .line 152
    .local v2, "srcClass":Ljava/lang/Class;
    aget-object v0, p1, v1

    .line 153
    .local v0, "destClass":Ljava/lang/Class;
    invoke-static {v2, v0}, Lorg/apache/commons/lang/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v4

    add-float/2addr v3, v4

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "destClass":Ljava/lang/Class;
    .end local v2    # "srcClass":Ljava/lang/Class;
    :cond_0
    return v3
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 104
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang/reflect/MemberUtils;->isSynthetic(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isPackageAccess(I)Z
    .locals 1
    .param p0, "modifiers"    # I

    .prologue
    .line 95
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSynthetic(Ljava/lang/reflect/Member;)Z
    .locals 2
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 113
    sget-object v0, Lorg/apache/commons/lang/reflect/MemberUtils;->IS_SYNTHETIC:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    sget-object v0, Lorg/apache/commons/lang/reflect/MemberUtils;->IS_SYNTHETIC:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 119
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "o"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 75
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    .line 78
    check-cast v0, Ljava/lang/reflect/Member;

    .line 79
    .local v0, "m":Ljava/lang/reflect/Member;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Lorg/apache/commons/lang/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method
