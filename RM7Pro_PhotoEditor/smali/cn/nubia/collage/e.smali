.class public Lcn/nubia/collage/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/e$e;,
        Lcn/nubia/collage/e$b;,
        Lcn/nubia/collage/e$g;,
        Lcn/nubia/collage/e$h;,
        Lcn/nubia/collage/e$c;,
        Lcn/nubia/collage/e$d;,
        Lcn/nubia/collage/e$i;,
        Lcn/nubia/collage/e$j;,
        Lcn/nubia/collage/e$f;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "collage/jImageSeqwithoutinterval"

    const-string v1, "collage/jImageSequence"

    const-string v2, "collage/jArtyperson"

    const-string v3, "collage/jBeYourself"

    const-string v4, "collage/jDiscovery"

    const-string v5, "collage/jEnjoyTime"

    const-string v6, "collage/jMyStyle"

    const-string v7, "collage/jNeoShare"

    const-string v8, "collage/jPairs"

    const-string v9, "collage/jStarrySky"

    const-string v10, "collage/jTimeDebris"

    const-string v11, "collage/jTimeGoesBy2"

    const-string v12, "collage/jTomorrow"

    const-string v13, "collage/jTravelMeaningful"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/collage/e;->a:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/collage/e;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/nubia/collage/e;->c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x2

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public static d(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcn/nubia/collage/e$f;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$f;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$f;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Lcn/nubia/collage/e$e;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$e;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$e;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lcn/nubia/collage/e$b;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$b;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$b;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Lcn/nubia/collage/e$g;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$g;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$g;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Lcn/nubia/collage/e$h;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$h;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$h;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lcn/nubia/collage/e$c;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$c;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$c;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcn/nubia/collage/e$d;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$d;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$d;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_6
    new-instance p0, Lcn/nubia/collage/e$i;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$i;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$i;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_7
    new-instance p0, Lcn/nubia/collage/e$j;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$j;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$j;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p0, Lcn/nubia/collage/e$f;

    invoke-direct {p0, v0}, Lcn/nubia/collage/e$f;-><init>(Lcn/nubia/collage/e$a;)V

    invoke-virtual {p0}, Lcn/nubia/collage/e$f;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
