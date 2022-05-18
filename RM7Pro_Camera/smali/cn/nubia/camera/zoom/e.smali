.class public Lcn/nubia/camera/zoom/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static final b:[F

.field public static final c:[F

.field private static final d:[Ljava/lang/Float;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [F

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/zoom/e;->b:[F

    const/16 v0, 0x44

    new-array v0, v0, [F

    .line 33
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/zoom/e;->c:[F

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x3f99999a    # 1.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/camera/zoom/e;->d:[Ljava/lang/Float;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
        0x3fb33333    # 1.4f
        0x3fc00000    # 1.5f
        0x3fcccccd    # 1.6f
        0x3fd9999a    # 1.7f
        0x3fe66666    # 1.8f
        0x3ff33333    # 1.9f
        0x40000000    # 2.0f
        0x400ccccd    # 2.2f
        0x4019999a    # 2.4f
        0x40266666    # 2.6f
        0x40333333    # 2.8f
        0x40400000    # 3.0f
        0x404ccccd    # 3.2f
        0x4059999a    # 3.4f
        0x40666666    # 3.6f
        0x40733333    # 3.8f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
        0x40a00000    # 5.0f
        0x40b00000    # 5.5f
        0x40c00000    # 6.0f
        0x40d00000    # 6.5f
        0x40e00000    # 7.0f
        0x40f00000    # 7.5f
        0x41000000    # 8.0f
        0x41080000    # 8.5f
        0x41100000    # 9.0f
        0x41180000    # 9.5f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
        0x41800000    # 16.0f
        0x41880000    # 17.0f
        0x41900000    # 18.0f
        0x41980000    # 19.0f
        0x41a00000    # 20.0f
        0x41b80000    # 23.0f
        0x41d00000    # 26.0f
        0x41e00000    # 28.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x420c0000    # 35.0f
        0x42180000    # 38.0f
        0x42240000    # 41.0f
        0x42300000    # 44.0f
        0x423c0000    # 47.0f
        0x42480000    # 50.0f
        0x425c0000    # 55.0f
        0x42700000    # 60.0f
        0x42820000    # 65.0f
        0x428c0000    # 70.0f
        0x42960000    # 75.0f
        0x42a00000    # 80.0f
        0x42aa0000    # 85.0f
        0x42b40000    # 90.0f
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f851eb8    # 1.04f
        0x3f8a3d71    # 1.08f
        0x3f8ccccd    # 1.1f
        0x3f91eb85    # 1.14f
        0x3f970a3d    # 1.18f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
        0x3fb33333    # 1.4f
        0x3fc00000    # 1.5f
        0x3fcccccd    # 1.6f
        0x3fd9999a    # 1.7f
        0x3fe66666    # 1.8f
        0x3ff33333    # 1.9f
        0x40000000    # 2.0f
        0x400ccccd    # 2.2f
        0x4019999a    # 2.4f
        0x40266666    # 2.6f
        0x40333333    # 2.8f
        0x40400000    # 3.0f
        0x404ccccd    # 3.2f
        0x4059999a    # 3.4f
        0x40666666    # 3.6f
        0x40733333    # 3.8f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
        0x40a00000    # 5.0f
        0x40b00000    # 5.5f
        0x40c00000    # 6.0f
        0x40d00000    # 6.5f
        0x40e00000    # 7.0f
        0x40f00000    # 7.5f
        0x41000000    # 8.0f
        0x41080000    # 8.5f
        0x41100000    # 9.0f
        0x41180000    # 9.5f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
        0x41800000    # 16.0f
        0x41880000    # 17.0f
        0x41900000    # 18.0f
        0x41980000    # 19.0f
        0x41a00000    # 20.0f
        0x41a80000    # 21.0f
        0x41b00000    # 22.0f
        0x41c00000    # 24.0f
        0x41d00000    # 26.0f
        0x41f00000    # 30.0f
        0x42000000    # 32.0f
        0x420c0000    # 35.0f
        0x42180000    # 38.0f
        0x42280000    # 42.0f
        0x42380000    # 46.0f
        0x42480000    # 50.0f
        0x425c0000    # 55.0f
        0x42700000    # 60.0f
        0x42820000    # 65.0f
        0x428c0000    # 70.0f
        0x42960000    # 75.0f
        0x42a00000    # 80.0f
        0x42aa0000    # 85.0f
        0x42b40000    # 90.0f
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data
.end method

.method public static a([FF)I
    .locals 2

    const/4 v0, 0x0

    .line 139
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    .line 140
    aget v1, p0, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    .line 142
    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    return v0

    .line 144
    :cond_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    aget v1, p0, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    .line 146
    aget v1, p0, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    aget v1, p0, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static a([Ljava/lang/String;FF)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 172
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "_"

    if-ne v0, v2, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 175
    :cond_1
    new-instance v0, Lcn/nubia/camera/zoom/e$1;

    invoke-direct {v0}, Lcn/nubia/camera/zoom/e$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_2

    const-string v1, "+"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(FFZZ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    sget-object v1, Lcn/nubia/camera/zoom/e;->d:[Ljava/lang/Float;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v6, v5, p0

    if-ltz v6, :cond_0

    cmpg-float v6, v5, p1

    if-gtz v6, :cond_0

    .line 92
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const p2, 0x3f99999a    # 1.2f

    .line 96
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-nez p3, :cond_3

    const/high16 p2, 0x40400000    # 3.0f

    .line 99
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    const/high16 p2, 0x41f00000    # 30.0f

    cmpl-float p3, p1, p2

    if-nez p3, :cond_4

    const/high16 p2, 0x41a00000    # 20.0f

    .line 102
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    const/high16 p2, 0x42700000    # 60.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    const/high16 p1, 0x42480000    # 50.0f

    .line 107
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gez p1, :cond_6

    .line 110
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    const-string p0, ""

    .line 112
    invoke-static {v0, p0}, Lcn/nubia/camera/zoom/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;FF)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FF)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    sget-object v0, Lcn/nubia/camera/zoom/e;->f:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/zoom/e;->f:Ljava/util/HashMap;

    .line 59
    :cond_1
    sget-object v0, Lcn/nubia/camera/zoom/e;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    return-object p0

    .line 64
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-float v0, p1, p2

    if-nez v0, :cond_3

    return-object p0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_4
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result p1

    if-eqz p1, :cond_5

    const/high16 p1, 0x40400000    # 3.0f

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_6

    .line 75
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_6

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    const/high16 p1, 0x40a00000    # 5.0f

    cmpl-float p2, p2, p1

    if-ltz p2, :cond_7

    .line 83
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public static a(Ljava/lang/String;FFZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_0
    sget-object v0, Lcn/nubia/camera/zoom/e;->e:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/zoom/e;->e:Ljava/util/HashMap;

    .line 123
    :cond_1
    sget-object v0, Lcn/nubia/camera/zoom/e;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    return-object v0

    .line 128
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_3

    .line 129
    sget-object p3, Lcn/nubia/camera/zoom/e;->c:[F

    goto :goto_0

    :cond_3
    sget-object p3, Lcn/nubia/camera/zoom/e;->b:[F

    .line 130
    :goto_0
    invoke-static {v0, p1}, Lcn/nubia/camera/zoom/e;->a(Ljava/util/ArrayList;F)V

    .line 131
    invoke-static {v0, p3, p1, p2}, Lcn/nubia/camera/zoom/e;->a(Ljava/util/ArrayList;[FFF)V

    .line 133
    sget-object p1, Lcn/nubia/camera/zoom/e;->e:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0, p0}, Lcn/nubia/camera/zoom/e;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 2

    const-string v0, "ArcZoomDebug"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/zoom/e;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 247
    sget-object v0, Lcn/nubia/camera/zoom/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[zoom-debug] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/ArrayList;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 214
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 235
    sget-object v0, Lcn/nubia/camera/zoom/e;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "; zooms: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomUtil"

    invoke-static {p1, p0}, Lcn/nubia/camera/zoom/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;[FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;[FFF)V"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 221
    :cond_0
    invoke-static {p1, p2}, Lcn/nubia/camera/zoom/e;->a([FF)I

    move-result v1

    .line 222
    :goto_0
    invoke-static {p1, p3}, Lcn/nubia/camera/zoom/e;->a([FF)I

    move-result v2

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 223
    aget v0, p1, v1

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 224
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    if-gt v1, v2, :cond_2

    .line 227
    aget p2, p1, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_2
    aget p1, p1, v2

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_3

    .line 230
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
