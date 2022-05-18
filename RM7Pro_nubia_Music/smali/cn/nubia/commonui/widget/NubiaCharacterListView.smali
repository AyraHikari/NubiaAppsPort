.class public Lcn/nubia/commonui/widget/NubiaCharacterListView;
.super Landroid/view/View;
.source "NubiaCharacterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaCharacterListView$a;,
        Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field private final FAVORITE_CHAR:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isChinese:Z

.field private mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

.field private mBottom:Landroid/widget/ImageView;

.field private mChoose:I

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCustomAlphabetColor:I

.field private mDiplayHeightPixels:I

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavFlag:Z

.field private mFlag:Z

.field protected mFullSet:[Ljava/lang/String;

.field private mHander:Landroid/os/Handler;

.field protected mHasFavFullSet:[Ljava/lang/String;

.field private mHighLightCharacterList:[Ljava/lang/String;

.field private mIsInCharcterListView:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mListView:Lcn/nubia/commonui/widget/MyListView;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNullSet:[Ljava/lang/String;

.field mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

.field private mPaintTextSize:F

.field private mPaintTxt:Landroid/graphics/Paint;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupXLoc:I

.field private mPreHeight:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mSingleLetterHeight:F

.field private mSingleMode:Z

.field private mTitle:Landroid/widget/TextView;

.field private mWindow:Landroid/view/WindowManager;

.field private mXPos:F

.field private mYPos:F

.field private temp:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "*"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 39
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 52
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 54
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 55
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 56
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 60
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 81
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 83
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    .line 126
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 98
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const-string v0, "*"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 39
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 52
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 54
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 55
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 56
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 60
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 81
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 83
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    .line 126
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 93
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-string v0, "*"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->FAVORITE_CHAR:Ljava/lang/String;

    .line 39
    const-string v0, "NubiaWidget"

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mNullSet:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 52
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    .line 54
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 55
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 56
    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 60
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    .line 81
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 83
    iput v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    .line 126
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hideFloatingView()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaCharacterListView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method private drawFav(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method private drawFavorite(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 173
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_char_star_small:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->drawFav(Landroid/graphics/Canvas;I)V

    .line 174
    return-void
.end method

.method private getScreenHeight()I
    .locals 3

    .prologue
    .line 480
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 481
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 482
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 483
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getScreenWidth()I
    .locals 3

    .prologue
    .line 473
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 474
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 475
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 476
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private hideFloatingView()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 589
    return-void
.end method

.method private hidePopupWindow()V
    .locals 4

    .prologue
    .line 451
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$1;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_letterdialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    sget v0, Lcn/nubia/commonui/R$id;->nubia_lettertext:I

    .line 105
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    .line 106
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 109
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_character_popup_x_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupXLoc:I

    .line 112
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mDiplayHeightPixels:I

    .line 114
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 115
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 117
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    .line 118
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    .line 120
    new-instance v0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    :cond_0
    return-void
.end method

.method private initFloatView(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    .line 487
    const-string v0, "window"

    .line 488
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 489
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 490
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 491
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 492
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_character_list_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 494
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_character_window_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 496
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 501
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getScreenHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 502
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 503
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 504
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 505
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_floatging_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    .line 508
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$2;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 520
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->my_list_view_2:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/MyListView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    .line 521
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/MyListView;->setOverScrollMode(I)V

    .line 522
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    .line 523
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    sget v1, Lcn/nubia/commonui/R$id;->bottom:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    .line 525
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$3;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MyListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    new-instance v0, Lcn/nubia/commonui/widget/NubiaCharacterListView$4;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$4;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    .line 548
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$5;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 557
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 558
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto/16 :goto_0
.end method

.method private isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 419
    if-nez p1, :cond_1

    .line 429
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 424
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    const/4 v0, 0x1

    goto :goto_0

    .line 423
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private show(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 390
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    .line 391
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_char_popup_star:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 394
    :goto_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    .line 396
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    .line 395
    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 397
    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 398
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_2
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupText:Landroid/widget/TextView;

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_char_float_star:I

    .line 393
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 401
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 402
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private showFloatingView(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 561
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    .line 562
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    .line 563
    new-instance v0, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;-><init>(Lcn/nubia/commonui/widget/NubiaCharacterListView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    .line 564
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->initFloatView(Landroid/content/Context;)V

    .line 565
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$drawable;->gray_circle_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 573
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    :goto_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView$a;->a(Ljava/util/ArrayList;)V

    .line 581
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 582
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mListView:Lcn/nubia/commonui/widget/MyListView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/MyListView;->setSelection(I)V

    .line 584
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->show(Ljava/lang/String;)V

    .line 585
    return-void

    .line 561
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mEntries:Ljava/util/ArrayList;

    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 576
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$drawable;->gray_circle_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showPopupWindow(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 408
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->show(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x800003

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x800005

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopupXLoc:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 277
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 278
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 279
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 280
    packed-switch v0, :pswitch_data_0

    .line 359
    :cond_0
    :goto_0
    return v5

    .line 282
    :pswitch_0
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 284
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    .line 285
    if-eq v2, v1, :cond_2

    if-eqz v3, :cond_2

    .line 286
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "A"

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "*"

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "\u2022"

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v0, :cond_3

    .line 292
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 298
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v0

    if-ne v5, v0, :cond_2

    .line 299
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showFloatingView(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :pswitch_1
    if-eq v2, v1, :cond_0

    if-eqz v3, :cond_0

    .line 308
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "A"

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "*"

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "\u2022"

    .line 312
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    if-eqz v0, :cond_5

    .line 314
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v0, :cond_6

    .line 315
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showPopupWindow(Ljava/lang/String;)V

    .line 322
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v3, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    move-result v0

    if-ne v5, v0, :cond_0

    .line 323
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 324
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 317
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHander:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->showFloatingView(Ljava/lang/String;)V

    goto :goto_2

    .line 331
    :pswitch_2
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 332
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    .line 333
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v0, :cond_8

    .line 334
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 338
    :goto_3
    if-eqz v3, :cond_7

    .line 339
    invoke-interface {v3, v7}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 341
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 336
    :cond_8
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hideFloatingView()V

    goto :goto_3

    .line 345
    :pswitch_3
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mIsInCharcterListView:Z

    .line 346
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isChinese:Z

    if-nez v0, :cond_a

    .line 347
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hidePopupWindow()V

    .line 352
    :goto_4
    if-eqz v3, :cond_9

    .line 353
    invoke-interface {v3, v7}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 355
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto/16 :goto_0

    .line 349
    :cond_a
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->hideFloatingView()V

    goto :goto_4

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected drawLetter(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 189
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->makeLettersFitSplitScreen(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 193
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHasFavFullSet:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 197
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getSingleHeight()F

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    .line 198
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 199
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 200
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->drawFavorite(Landroid/graphics/Canvas;)V

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$color;->nubia_character_normal_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 205
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    if-eq v2, v5, :cond_6

    .line 206
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mXPos:F

    .line 211
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleLetterHeight:F

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mYPos:F

    .line 212
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFlag:Z

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 213
    invoke-direct {p0, v2, v3}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->isInHighLightCharacterList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$color;->nubia_character_normal_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 217
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    if-eq v2, v5, :cond_7

    .line 218
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    :cond_4
    :goto_3
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    if-ne v0, v1, :cond_5

    .line 224
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$color;->nubia_character_normal_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 226
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    if-eq v2, v5, :cond_8

    .line 227
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    :cond_5
    :goto_4
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mXPos:F

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mYPos:F

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 208
    :cond_6
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 220
    :cond_7
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 229
    :cond_8
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTxt:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4
.end method

.method public getFavoriteLetter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "*"

    return-object v0
.end method

.method public getSingleHeight()F
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getSingleMode()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    return v0
.end method

.method public hideCharList()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 596
    :cond_0
    return-void
.end method

.method protected makeLettersFitSplitScreen(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    if-ne v0, p1, :cond_0

    .line 162
    :goto_0
    return v3

    .line 151
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    aget-object v0, v0, v1

    .line 156
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFullSet:[Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_character_list_view_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPaintTextSize:F

    .line 159
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 160
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    .line 161
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPreHeight:I

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 446
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 448
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->drawLetter(Landroid/graphics/Canvas;)V

    .line 266
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 249
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    invoke-interface {v0, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 253
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 256
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    .line 257
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    .line 260
    :cond_1
    return-void
.end method

.method public setCurrentLetter(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 369
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    aget-object v0, v0, v1

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    aget-object v0, v0, v1

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 376
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->temp:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    :cond_3
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mChoose:I

    .line 379
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->postInvalidate()V

    goto :goto_0

    .line 375
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setCustomAlphabetColor(I)V
    .locals 0

    .prologue
    .line 386
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mCustomAlphabetColor:I

    .line 387
    return-void
.end method

.method public setFavFlag()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mFavFlag:Z

    .line 178
    return-void
.end method

.method public setHighLightCharacterList([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mHighLightCharacterList:[Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setLableNamesMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mMap:Ljava/util/HashMap;

    .line 144
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mOnTouchingLetterChangedListener:Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;

    .line 466
    return-void
.end method

.method public setSingleMode(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    if-ne v0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mSingleMode:Z

    .line 130
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mContainer:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 133
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mAdapter:Lcn/nubia/commonui/widget/NubiaCharacterListView$a;

    .line 134
    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaCharacterListView;->mWindow:Landroid/view/WindowManager;

    goto :goto_0
.end method
