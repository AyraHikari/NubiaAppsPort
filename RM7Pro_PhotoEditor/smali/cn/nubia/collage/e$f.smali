.class Lcn/nubia/collage/e$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/collage/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 11

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

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/e$f;->a:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/collage/e$a;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/e$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/e$f;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcn/nubia/collage/e;->b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
