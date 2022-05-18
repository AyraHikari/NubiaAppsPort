.class Lcn/nubia/collage/e$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "collage/pLeisureTime"

    const-string v1, "collage/pThisMoment"

    const-string v2, "collage/pTornEdges"

    const-string v3, "collage/pTravel"

    const-string v4, "collage/pOutsideWorld"

    const-string v5, "collage/pFreeze"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/e$e;->a:[Ljava/lang/String;

    const-string v1, "collage/gNine1"

    const-string v2, "collage/gNine2"

    const-string v3, "collage/gNine3"

    const-string v4, "collage/gNine4"

    const-string v5, "collage/gNine5"

    const-string v6, "collage/gNine6"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/e$e;->b:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/e$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/e$e;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/collage/e$e;->b:[Ljava/lang/String;

    invoke-static {}, Lcn/nubia/collage/e;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/collage/e;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
