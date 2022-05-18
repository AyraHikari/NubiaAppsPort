.class public Lc/e/c/i;
.super Lc/e/c/o;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/e/c/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    goto :goto_3

    :cond_0
    const-string p1, "grid"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcn/nubia/collage/o/b/f;

    invoke-direct {p1}, Lcn/nubia/collage/o/b/f;-><init>()V

    invoke-virtual {p0, v0, p1}, Lc/e/c/i;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    :goto_1
    move-object v1, p1

    goto :goto_2

    :cond_1
    const-string p1, "join"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcn/nubia/collage/o/b/h;

    invoke-direct {p1}, Lcn/nubia/collage/o/b/h;-><init>()V

    invoke-virtual {p0, v0, p1}, Lc/e/c/i;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p1, "poster"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcn/nubia/collage/o/b/j;

    invoke-direct {p1}, Lcn/nubia/collage/o/b/j;-><init>()V

    invoke-virtual {p0, v0, p1}, Lc/e/c/i;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    move v2, v4

    :cond_4
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V
    .locals 5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "width"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, p2

    check-cast v3, Lcn/nubia/collage/o/b/f;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcn/nubia/collage/o/b/k;->I(I)V

    goto :goto_1

    :cond_1
    const-string v3, "height"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, p2

    check-cast v3, Lcn/nubia/collage/o/b/f;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcn/nubia/collage/o/b/k;->A(I)V

    goto :goto_1

    :cond_2
    const-string v3, "area"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcn/nubia/collage/o/a/m;

    invoke-static {v0}, Lcn/nubia/collage/o/a/a;->e(Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object v0

    invoke-direct {v3, v0}, Lcn/nubia/collage/o/a/m;-><init>(Lcn/nubia/collage/o/a/c;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, p2

    check-cast v0, Lcn/nubia/collage/o/b/f;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->x(Ljava/util/List;)V

    move v2, v3

    :cond_4
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V
    .locals 21

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v11, v2

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move v10, v3

    move/from16 v16, v10

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_0
    if-nez v16, :cond_14

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v2, 0x2

    const-string v3, "textInfo"

    const-string v4, "materialImage"

    const-string v5, "userImage"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_1
    move/from16 v20, v10

    goto/16 :goto_3

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/nubia/collage/o/a/m;

    invoke-direct {v0, v11, v10}, Lcn/nubia/collage/o/a/m;-><init>(Lcn/nubia/collage/o/a/c;I)V

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/nubia/collage/o/a/e;

    invoke-direct {v0, v11, v10, v12}, Lcn/nubia/collage/o/a/e;-><init>(Lcn/nubia/collage/o/a/c;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/collage/o/a/l;

    move-object v2, v0

    move-object v3, v11

    move v4, v10

    move/from16 v5, v17

    move-object v6, v13

    move-object v7, v14

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v20, v10

    move-object v10, v15

    invoke-direct/range {v2 .. v10}, Lcn/nubia/collage/o/a/l;-><init>(Lcn/nubia/collage/o/a/c;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    move/from16 v20, v10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, ""

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v2, p2

    check-cast v2, Lcn/nubia/collage/o/b/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcn/nubia/collage/o/b/k;->I(I)V

    goto/16 :goto_3

    :cond_5
    const-string v2, "height"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v2, p2

    check-cast v2, Lcn/nubia/collage/o/b/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcn/nubia/collage/o/b/h;->A(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_3

    :cond_9
    const-string v2, "layer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    goto/16 :goto_4

    :cond_a
    const-string v2, "area"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v0}, Lcn/nubia/collage/o/a/a;->e(Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_3

    :cond_b
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_3

    :cond_c
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v17, v0

    goto :goto_3

    :cond_d
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_3

    :cond_e
    const-string v2, "font"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_f
    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v18, v0

    goto :goto_3

    :cond_10
    const-string v2, "color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    move/from16 v19, v0

    goto :goto_3

    :cond_11
    const-string v2, "style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :cond_12
    :goto_3
    move/from16 v10, v20

    goto :goto_4

    :cond_13
    move/from16 v20, v10

    move-object/from16 v0, p2

    check-cast v0, Lcn/nubia/collage/o/b/h;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->x(Ljava/util/List;)V

    move/from16 v16, v2

    goto :goto_3

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V
    .locals 21

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v11, v2

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move v10, v3

    move/from16 v16, v10

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_0
    if-nez v16, :cond_14

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v2, 0x2

    const-string v3, "textInfo"

    const-string v4, "materialImage"

    const-string v5, "userImage"

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_1
    move/from16 v20, v10

    goto/16 :goto_3

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/nubia/collage/o/a/m;

    invoke-direct {v0, v11, v10}, Lcn/nubia/collage/o/a/m;-><init>(Lcn/nubia/collage/o/a/c;I)V

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/nubia/collage/o/a/e;

    invoke-direct {v0, v11, v10, v12}, Lcn/nubia/collage/o/a/e;-><init>(Lcn/nubia/collage/o/a/c;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcn/nubia/collage/o/a/l;

    move-object v2, v0

    move-object v3, v11

    move v4, v10

    move/from16 v5, v17

    move-object v6, v13

    move-object v7, v14

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v20, v10

    move-object v10, v15

    invoke-direct/range {v2 .. v10}, Lcn/nubia/collage/o/a/l;-><init>(Lcn/nubia/collage/o/a/c;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    move/from16 v20, v10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "width"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, ""

    if-eqz v2, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v2, p2

    check-cast v2, Lcn/nubia/collage/o/b/j;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcn/nubia/collage/o/b/k;->I(I)V

    goto/16 :goto_3

    :cond_5
    const-string v2, "height"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v2, p2

    check-cast v2, Lcn/nubia/collage/o/b/j;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcn/nubia/collage/o/b/k;->A(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_3

    :cond_9
    const-string v2, "layer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v10, v0

    goto/16 :goto_4

    :cond_a
    const-string v2, "area"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v0}, Lcn/nubia/collage/o/a/a;->e(Ljava/lang/String;)Lcn/nubia/collage/o/a/c;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_3

    :cond_b
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_3

    :cond_c
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v17, v0

    goto :goto_3

    :cond_d
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_3

    :cond_e
    const-string v2, "font"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_3

    :cond_f
    const-string v2, "size"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v18, v0

    goto :goto_3

    :cond_10
    const-string v2, "color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    move/from16 v19, v0

    goto :goto_3

    :cond_11
    const-string v2, "style"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :cond_12
    :goto_3
    move/from16 v10, v20

    goto :goto_4

    :cond_13
    move/from16 v20, v10

    move-object/from16 v0, p2

    check-cast v0, Lcn/nubia/collage/o/b/j;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->x(Ljava/util/List;)V

    move/from16 v16, v2

    goto :goto_3

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_14
    return-void
.end method
