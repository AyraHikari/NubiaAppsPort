.class public Lcn/nubia/camera/camerafamily/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lcn/nubia/camera/af/a;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Lcn/nubia/camera/af/a;

    .line 32
    sget-object v1, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->B:Lcn/nubia/camera/af/a;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->h:Lcn/nubia/camera/af/a;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->J:Lcn/nubia/camera/af/a;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->T:Lcn/nubia/camera/af/a;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->S:Lcn/nubia/camera/af/a;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->U:Lcn/nubia/camera/af/a;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->V:Lcn/nubia/camera/af/a;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/camera/camerafamily/b;->a:[Lcn/nubia/camera/af/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/a/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/nubia/camera/camerafamily/b;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcn/nubia/camera/camerafamily/b;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 52
    monitor-exit v0

    return-object v1

    .line 54
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v2, Lcn/nubia/camera/h;

    invoke-direct {v2}, Lcn/nubia/camera/h;-><init>()V

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 60
    invoke-static {}, Lcn/nubia/camera/af/a;->values()[Lcn/nubia/camera/af/a;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    const/4 v9, 0x0

    .line 61
    invoke-virtual {v2, v9, v8}, Lcn/nubia/camera/h;->b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 63
    invoke-virtual {v9}, Lcn/nubia/camera/ac/c;->a()Lcn/nubia/a/c;

    move-result-object v10

    .line 64
    invoke-virtual {v9}, Lcn/nubia/camera/ac/c;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10, p0}, Lcn/nubia/a/c;->a(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    invoke-virtual {v3, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 71
    :cond_2
    sget-object p0, Lcn/nubia/camera/camerafamily/b;->a:[Lcn/nubia/camera/af/a;

    array-length v2, p0

    :goto_1
    if-ge v6, v2, :cond_4

    aget-object v4, p0, v6

    .line 72
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/a/c;

    if-eqz v4, :cond_3

    .line 74
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 78
    :cond_4
    sput-object v1, Lcn/nubia/camera/camerafamily/b;->b:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 2

    .line 42
    sget-object v0, Lcn/nubia/camera/camerafamily/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFamilyMembersReload. Original size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/camerafamily/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FamilyMemberParser"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 46
    sput-object v1, Lcn/nubia/camera/camerafamily/b;->b:Ljava/util/List;

    return v0
.end method
