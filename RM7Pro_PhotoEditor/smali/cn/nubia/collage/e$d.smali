.class Lcn/nubia/collage/e$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "collage/pAlbum"

    const-string v1, "collage/pColorfulWorld"

    const-string v2, "collage/pFashionLife"

    const-string v3, "collage/pJourney"

    const-string v4, "collage/pShiJie"

    const-string v5, "collage/pSimple"

    const-string v6, "collage/pStarry"

    const-string v7, "collage/pTimesAlbum"

    const-string v8, "collage/pCity"

    const-string v9, "collage/pHappiness"

    const-string v10, "collage/pScenery"

    const-string v11, "collage/pInnocence"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/e$d;->a:[Ljava/lang/String;

    const-string v1, "collage/gFour1"

    const-string v2, "collage/gFour2"

    const-string v3, "collage/gFour3"

    const-string v4, "collage/gFour4"

    const-string v5, "collage/gFour5"

    const-string v6, "collage/gFour6"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/e$d;->b:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/e$d;-><init>()V

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

    iget-object v0, p0, Lcn/nubia/collage/e$d;->a:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/collage/e$d;->b:[Ljava/lang/String;

    invoke-static {}, Lcn/nubia/collage/e;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/collage/e;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
