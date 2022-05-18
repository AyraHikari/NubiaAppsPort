.class public final enum Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;
.super Ljava/lang/Enum;
.source "NotePadFormatPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatButtonCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

.field public static final enum FirstFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

.field public static final enum FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

.field public static final enum SecondFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

.field public static final enum ThirdFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    const-string v1, "FirstFormatButton"

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FirstFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    const-string v1, "SecondFormatButton"

    invoke-direct {v0, v1, v3}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->SecondFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    const-string v1, "ThirdFormatButton"

    invoke-direct {v0, v1, v4}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ThirdFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    const-string v1, "FourthFormatButton"

    invoke-direct {v0, v1, v5}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v1, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FirstFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->SecondFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ThirdFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->$VALUES:[Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-class v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    return-object v0
.end method

.method public static values()[Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->$VALUES:[Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    invoke-virtual {v0}, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    return-object v0
.end method
