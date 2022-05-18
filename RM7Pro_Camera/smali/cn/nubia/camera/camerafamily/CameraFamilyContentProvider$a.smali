.class public final Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "content://nubia.camera.family/member"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;->a:Landroid/net/Uri;

    const-string v1, "family_member_number"

    const-string v2, "family_member_type"

    const-string v3, "family_member_state"

    const-string v4, "family_member_name"

    const-string v5, "family_member_icon_id"

    const-string v6, "family_member_icon"

    const-string v7, "family_member_action"

    .line 86
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;->b:[Ljava/lang/String;

    return-void
.end method
