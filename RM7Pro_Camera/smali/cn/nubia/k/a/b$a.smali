.class public final enum Lcn/nubia/k/a/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/k/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/k/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/k/a/b$a;

.field public static final enum b:Lcn/nubia/k/a/b$a;

.field public static final enum c:Lcn/nubia/k/a/b$a;

.field public static final enum d:Lcn/nubia/k/a/b$a;

.field public static final enum e:Lcn/nubia/k/a/b$a;

.field public static final enum f:Lcn/nubia/k/a/b$a;

.field public static final enum g:Lcn/nubia/k/a/b$a;

.field public static final enum h:Lcn/nubia/k/a/b$a;

.field public static final enum i:Lcn/nubia/k/a/b$a;

.field public static final enum j:Lcn/nubia/k/a/b$a;

.field private static final synthetic k:[Lcn/nubia/k/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcn/nubia/k/a/b$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    new-instance v1, Lcn/nubia/k/a/b$a;

    const-string v3, "COMPRESS_FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/k/a/b$a;->b:Lcn/nubia/k/a/b$a;

    new-instance v3, Lcn/nubia/k/a/b$a;

    const-string v5, "WRITE_EXIF_FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/k/a/b$a;->c:Lcn/nubia/k/a/b$a;

    new-instance v5, Lcn/nubia/k/a/b$a;

    const-string v7, "WRITE_FILE_FAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/k/a/b$a;->d:Lcn/nubia/k/a/b$a;

    .line 17
    new-instance v7, Lcn/nubia/k/a/b$a;

    const-string v9, "WRITE_DATABASE_FAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcn/nubia/k/a/b$a;->e:Lcn/nubia/k/a/b$a;

    new-instance v9, Lcn/nubia/k/a/b$a;

    const-string v11, "CREATE_BITMAP_FAIL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcn/nubia/k/a/b$a;->f:Lcn/nubia/k/a/b$a;

    new-instance v11, Lcn/nubia/k/a/b$a;

    const-string v13, "PATH_NOT_EXIST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcn/nubia/k/a/b$a;->g:Lcn/nubia/k/a/b$a;

    .line 18
    new-instance v13, Lcn/nubia/k/a/b$a;

    const-string v15, "DATA_IS_NULL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcn/nubia/k/a/b$a;->h:Lcn/nubia/k/a/b$a;

    new-instance v15, Lcn/nubia/k/a/b$a;

    const-string v14, "UPDATE_STORAGE_CAPACITY_FAIL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcn/nubia/k/a/b$a;->i:Lcn/nubia/k/a/b$a;

    new-instance v14, Lcn/nubia/k/a/b$a;

    const-string v12, "STORAGE_INSUFFICIENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcn/nubia/k/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcn/nubia/k/a/b$a;->j:Lcn/nubia/k/a/b$a;

    const/16 v12, 0xa

    new-array v12, v12, [Lcn/nubia/k/a/b$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 15
    sput-object v12, Lcn/nubia/k/a/b$a;->k:[Lcn/nubia/k/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/k/a/b$a;
    .locals 1

    .line 15
    const-class v0, Lcn/nubia/k/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/k/a/b$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/k/a/b$a;
    .locals 1

    .line 15
    sget-object v0, Lcn/nubia/k/a/b$a;->k:[Lcn/nubia/k/a/b$a;

    invoke-virtual {v0}, [Lcn/nubia/k/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/k/a/b$a;

    return-object v0
.end method
