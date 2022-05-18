.class public Lcn/nubia/modules/videoRender/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:[Ljava/lang/String;

.field private static c:Lcn/nubia/modules/videoRender/e/c;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/modules/videoRender/e/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "No Filter"

    const-string v1, "Switch Color"

    const-string v2, "Scale"

    const-string v3, "Shake"

    const-string v4, "Film"

    const-string v5, "grAyScale"

    const-string v6, "PRagueThree"

    const-string v7, "No Filter"

    const-string v8, "darble Screen"

    const-string v9, "Four Screen"

    const-string v10, "Six Screen"

    const-string v11, "No Filter"

    const-string v12, "Focus"

    const-string v13, "MovieStart"

    const-string v14, "Count Down"

    const-string v15, "TopTrans"

    const-string v16, "RightTrans"

    .line 1
    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    .line 3
    :try_start_0
    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/l;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/q;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/n;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/o;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/b;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/h;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/m;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/a;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/f;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/p;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/e;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/k;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/g;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/i;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/modules/videoRender/e/c;->b:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const-class v2, Lcn/nubia/modules/videoRender/e/s;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b()Lcn/nubia/modules/videoRender/e/c;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/modules/videoRender/e/c;->c:Lcn/nubia/modules/videoRender/e/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/modules/videoRender/e/c;

    invoke-direct {v0}, Lcn/nubia/modules/videoRender/e/c;-><init>()V

    sput-object v0, Lcn/nubia/modules/videoRender/e/c;->c:Lcn/nubia/modules/videoRender/e/c;

    .line 3
    :cond_0
    sget-object v0, Lcn/nubia/modules/videoRender/e/c;->c:Lcn/nubia/modules/videoRender/e/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/modules/videoRender/e/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/modules/videoRender/e/d;

    return-object p1
.end method
