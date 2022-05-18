.class public Lcn/nubia/collage/o/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;
    .locals 11

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v3, p0, v1}, Lcn/nubia/collage/o/a/h;-><init>(IIZ)V

    return-object v0

    :cond_0
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcn/nubia/collage/o/a/h;-><init>(IIIIZZ)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;
    .locals 12

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcn/nubia/collage/o/a/h;-><init>(IIIZ)V

    return-object v0

    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcn/nubia/collage/o/a/h;-><init>(IIIIZZ)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v3, Landroid/graphics/Point;

    aget-object v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    new-instance p0, Lcn/nubia/collage/o/a/g;

    invoke-direct {p0, v2}, Lcn/nubia/collage/o/a/g;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static d([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;
    .locals 5

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/collage/o/a/h;-><init>(IIZ)V

    return-object v0

    :cond_0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v4, v2, p0, v1}, Lcn/nubia/collage/o/a/h;-><init>(IIIZ)V

    return-object v0

    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    new-instance v0, Lcn/nubia/collage/o/a/h;

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/nubia/collage/o/a/h;-><init>(IIII)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcn/nubia/collage/o/a/c;
    .locals 10

    invoke-static {p0}, Lcn/nubia/collage/o/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcn/nubia/collage/o/a/a;->a([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcn/nubia/collage/o/a/a;->b([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcn/nubia/collage/o/a/a;->c([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance v0, Lcn/nubia/collage/o/a/f;

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v4, v3, v2, p0}, Lcn/nubia/collage/o/a/f;-><init>(IIII)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcn/nubia/collage/o/a/b;

    aget-object v1, p0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v3, p0}, Lcn/nubia/collage/o/a/b;-><init>(III)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcn/nubia/collage/o/a/i;

    aget-object v4, p0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v1, 0x5

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcn/nubia/collage/o/a/i;-><init>(IIIII)V

    return-object v0

    :pswitch_6
    invoke-static {p0}, Lcn/nubia/collage/o/a/a;->d([Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method
