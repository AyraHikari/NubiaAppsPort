.class public La/b/d/c/a/a;
.super La/b/d/c/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/d/c/a/a$f;,
        La/b/d/c/a/a$c;,
        La/b/d/c/a/a$d;,
        La/b/d/c/a/a$e;,
        La/b/d/c/a/a$b;,
        La/b/d/c/a/a$g;
    }
.end annotation


# instance fields
.field private o:La/b/d/c/a/a$c;

.field private p:La/b/d/c/a/a$g;

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, La/b/d/c/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, La/b/d/c/a/a;-><init>(La/b/d/c/a/a$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(La/b/d/c/a/a$c;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b/d/c/a/d;-><init>(La/b/d/c/a/d$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, La/b/d/c/a/a;->q:I

    .line 4
    iput v0, p0, La/b/d/c/a/a;->r:I

    .line 5
    new-instance v0, La/b/d/c/a/a$c;

    invoke-direct {v0, p1, p0, p2}, La/b/d/c/a/a$c;-><init>(La/b/d/c/a/a$c;La/b/d/c/a/a;Landroid/content/res/Resources;)V

    .line 6
    invoke-virtual {p0, v0}, La/b/d/c/a/a;->h(La/b/d/c/a/b$c;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, La/b/d/c/a/a;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, La/b/d/c/a/a;->jumpToCurrentState()V

    return-void
.end method

.method public static m(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)La/b/d/c/a/a;
    .locals 8

    .line 1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, La/b/d/c/a/a;

    invoke-direct {v0}, La/b/d/c/a/a;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 4
    invoke-virtual/range {v2 .. v7}, La/b/d/c/a/a;->n(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private o(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .line 1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-le v3, v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-direct/range {p0 .. p5}, La/b/d/c/a/a;->q(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 6
    :cond_4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-direct/range {p0 .. p5}, La/b/d/c/a/a;->r(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, La/b/d/c/a/a;->onStateChange([I)Z

    return-void
.end method

.method private q(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 4

    .line 1
    sget-object v0, La/b/d/a/j;->I:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, La/b/d/a/j;->J:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3
    sget v2, La/b/d/a/j;->K:I

    const/4 v3, -0x1

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 5
    invoke-static {p1, v2}, La/b/d/b/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0, p4}, La/b/d/c/a/d;->k(Landroid/util/AttributeSet;)[I

    move-result-object v0

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez p1, :cond_5

    .line 8
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 9
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "vector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p2, p3, p4, p5}, La/b/b/a/h;->c(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)La/b/b/a/h;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_3

    .line 12
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 16
    iget-object p2, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    invoke-virtual {p2, v0, p1, v1}, La/b/d/c/a/a$c;->B([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    .line 17
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    .line 1
    sget-object v0, La/b/d/a/j;->L:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, La/b/d/a/j;->O:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3
    sget v3, La/b/d/a/j;->N:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 4
    sget v4, La/b/d/a/j;->M:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    .line 5
    invoke-static {p1, v4}, La/b/d/b/a/a;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    sget v5, La/b/d/a/j;->P:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v4, :cond_5

    .line 8
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 9
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "animated-vector"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, La/b/b/a/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)La/b/b/a/b;

    move-result-object v4

    goto :goto_2

    .line 11
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p1, v4, :cond_3

    .line 12
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 14
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v3, v2, :cond_6

    .line 16
    iget-object p1, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    invoke-virtual {p1, v1, v3, v4, v5}, La/b/d/c/a/a$c;->C(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    .line 17
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private s(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, La/b/d/c/a/a;->p:La/b/d/c/a/a$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget v2, p0, La/b/d/c/a/a;->q:I

    if-ne p1, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget v2, p0, La/b/d/c/a/a;->r:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, La/b/d/c/a/a$g;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, La/b/d/c/a/a$g;->b()V

    .line 5
    iget v0, p0, La/b/d/c/a/a;->r:I

    iput v0, p0, La/b/d/c/a/a;->q:I

    .line 6
    iput p1, p0, La/b/d/c/a/a;->r:I

    return v1

    .line 7
    :cond_1
    iget v2, p0, La/b/d/c/a/a;->q:I

    .line 8
    invoke-virtual {v0}, La/b/d/c/a/a$g;->d()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, La/b/d/c/a/b;->c()I

    move-result v2

    :goto_0
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, La/b/d/c/a/a;->p:La/b/d/c/a/a$g;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, La/b/d/c/a/a;->r:I

    .line 12
    iput v0, p0, La/b/d/c/a/a;->q:I

    .line 13
    iget-object v0, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    .line 14
    invoke-virtual {v0, v2}, La/b/d/c/a/a$c;->E(I)I

    move-result v3

    .line 15
    invoke-virtual {v0, p1}, La/b/d/c/a/a$c;->E(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    if-nez v3, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {v0, v3, v4}, La/b/d/c/a/a$c;->G(II)I

    move-result v6

    if-gez v6, :cond_4

    return v5

    .line 17
    :cond_4
    invoke-virtual {v0, v3, v4}, La/b/d/c/a/a$c;->I(II)Z

    move-result v7

    .line 18
    invoke-virtual {p0, v6}, La/b/d/c/a/b;->g(I)Z

    .line 19
    invoke-virtual {p0}, La/b/d/c/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 20
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_5

    .line 21
    invoke-virtual {v0, v3, v4}, La/b/d/c/a/a$c;->H(II)Z

    move-result v0

    .line 22
    new-instance v3, La/b/d/c/a/a$e;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, La/b/d/c/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_1

    .line 23
    :cond_5
    instance-of v0, v6, La/b/b/a/b;

    if-eqz v0, :cond_6

    .line 24
    new-instance v3, La/b/d/c/a/a$d;

    check-cast v6, La/b/b/a/b;

    invoke-direct {v3, v6}, La/b/d/c/a/a$d;-><init>(La/b/b/a/b;)V

    goto :goto_1

    .line 25
    :cond_6
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    .line 26
    new-instance v3, La/b/d/c/a/a$b;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, La/b/d/c/a/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 27
    :goto_1
    invoke-virtual {v3}, La/b/d/c/a/a$g;->c()V

    .line 28
    iput-object v3, p0, La/b/d/c/a/a;->p:La/b/d/c/a/a$g;

    .line 29
    iput v2, p0, La/b/d/c/a/a;->r:I

    .line 30
    iput p1, p0, La/b/d/c/a/a;->q:I

    return v1

    :cond_7
    :goto_2
    return v5
.end method

.method private t(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    iget-object v0, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    iget v1, v0, La/b/d/c/a/b$c;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, La/b/d/c/a/b$c;->d:I

    .line 4
    :cond_0
    sget v1, La/b/d/a/j;->E:I

    iget-boolean v2, v0, La/b/d/c/a/b$c;->i:Z

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, La/b/d/c/a/b$c;->x(Z)V

    .line 7
    sget v1, La/b/d/a/j;->F:I

    iget-boolean v2, v0, La/b/d/c/a/b$c;->l:Z

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, La/b/d/c/a/b$c;->t(Z)V

    .line 10
    sget v1, La/b/d/a/j;->G:I

    iget v2, v0, La/b/d/c/a/b$c;->A:I

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, La/b/d/c/a/b$c;->u(I)V

    .line 13
    sget v1, La/b/d/a/j;->H:I

    iget v2, v0, La/b/d/c/a/b$c;->B:I

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 15
    invoke-virtual {v0, v1}, La/b/d/c/a/b$c;->v(I)V

    .line 16
    sget v1, La/b/d/a/j;->C:I

    iget-boolean v0, v0, La/b/d/c/a/b$c;->x:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, La/b/d/c/a/a;->setDither(Z)V

    return-void
.end method


# virtual methods
.method bridge synthetic b()La/b/d/c/a/b$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/d/c/a/a;->l()La/b/d/c/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected h(La/b/d/c/a/b$c;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, La/b/d/c/a/d;->h(La/b/d/c/a/b$c;)V

    .line 2
    instance-of v0, p1, La/b/d/c/a/a$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, La/b/d/c/a/a$c;

    iput-object p1, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic j()La/b/d/c/a/d$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, La/b/d/c/a/a;->l()La/b/d/c/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, La/b/d/c/a/b;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, La/b/d/c/a/a;->p:La/b/d/c/a/a$g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, La/b/d/c/a/a$g;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, La/b/d/c/a/a;->p:La/b/d/c/a/a$g;

    .line 5
    iget v0, p0, La/b/d/c/a/a;->q:I

    invoke-virtual {p0, v0}, La/b/d/c/a/b;->g(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, La/b/d/c/a/a;->q:I

    .line 7
    iput v0, p0, La/b/d/c/a/a;->r:I

    :cond_0
    return-void
.end method

.method l()La/b/d/c/a/a$c;
    .locals 3

    .line 1
    new-instance v0, La/b/d/c/a/a$c;

    iget-object v1, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, La/b/d/c/a/a$c;-><init>(La/b/d/c/a/a$c;La/b/d/c/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/d/c/a/a;->s:Z

    if-nez v0, :cond_0

    invoke-super {p0}, La/b/d/c/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    invoke-virtual {v0}, La/b/d/c/a/a$c;->r()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/b/d/c/a/a;->s:Z

    :cond_0
    return-object p0
.end method

.method public n(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    sget-object v0, La/b/d/a/j;->B:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, La/b/d/a/j;->D:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, La/b/d/c/a/a;->setVisible(ZZ)Z

    .line 3
    invoke-direct {p0, v0}, La/b/d/c/a/a;->t(Landroid/content/res/TypedArray;)V

    .line 4
    invoke-virtual {p0, p2}, La/b/d/c/a/b;->i(Landroid/content/res/Resources;)V

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-direct/range {p0 .. p5}, La/b/d/c/a/a;->o(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    invoke-direct {p0}, La/b/d/c/a/a;->p()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, La/b/d/c/a/a;->o:La/b/d/c/a/a$c;

    invoke-virtual {v0, p1}, La/b/d/c/a/a$c;->F([I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, La/b/d/c/a/b;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-direct {p0, v0}, La/b/d/c/a/a;->s(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, La/b/d/c/a/b;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, La/b/d/c/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, La/b/d/c/a/b;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, La/b/d/c/a/a;->p:La/b/d/c/a/a$g;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v1}, La/b/d/c/a/a$g;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, La/b/d/c/a/a;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
