.class public Lcn/nubia/notepad/NotePadEditorActivity;
.super Lcn/nubia/notepad/NotePadActivity;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;
.implements Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;
.implements Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;
.implements Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;
.implements Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;,
        Lcn/nubia/notepad/NotePadEditorActivity$LeftAndRightHandObserver;
    }
.end annotation


# static fields
.field private static final MSG_EXCUTE_NEXT_TASK:I = 0x3

.field private static final MSG_INIT_NOTE_CONTENT_DATA:I = 0x0

.field private static final MSG_INSERT_IMAGE:I = 0x1

.field private static final MSG_INSERT_SHARE_IMAGE:I = 0x7

.field private static final MSG_SET_IMAGE_COMPLETE:I = 0x4

.field private static final MSG_SHARE_NOTE:I = 0x2

.field private static final MSG_SHOW_KEYBORARD:I = 0x5

.field private static final MSG_SHOW_LABEL_LIST:I = 0x6

.field public static final STATUS_BAR_COVER_CLICK_ACTION:Ljava/lang/String; = "notification click"

.field public static final TAG:Ljava/lang/String; = "NotePadEditorActivity"

.field public static final UI_MODE_CHANGE:Ljava/lang/String; = "UI_MODE_CHANGE"


# instance fields
.field private final CURSOR_LINE_POSITION_FIRST_LINE:I

.field private final CURSOR_LINE_POSITION_LAST_LINE:I

.field private final CURSOR_LINE_POSITION_MIDDLE_LINE:I

.field private final MENU_CLASSIFY:Ljava/lang/String;

.field private final MENU_IMAGE:Ljava/lang/String;

.field private final MENU_LIST_MODE:Ljava/lang/String;

.field private final MENU_RECORD:Ljava/lang/String;

.field private final MENU_REMIND:Ljava/lang/String;

.field private final NIU_TALK:Ljava/lang/String;

.field private final NIU_TALK_KEY:Ljava/lang/String;

.field private final NOTEPAD_DEFAULT_CLASSIFY:I

.field private final NOTEPAD_EDITOR_EDITTEXT_VIEW:Ljava/lang/String;

.field private final NOTEPAD_EDITOR_IMAGE_VIEW:Ljava/lang/String;

.field private final NOTEPAD_EDITOR_RECORD_VIEW:Ljava/lang/String;

.field private final NOTEPAD_FORCE_TOUCH_NEW_EVENT:Ljava/lang/String;

.field private final NOTEPAD_IMAGE_INSERT_MAX:I

.field private final NOTEPAD_SEARCH:Ljava/lang/String;

.field private final NOTEPAD_SHARE:Ljava/lang/String;

.field private NightMode:I

.field private final REQUEST_SELECT_IMAGE:I

.field private final SHARE_TYPE_IMAGE:Ljava/lang/String;

.field private final SHARE_TYPE_TXT:Ljava/lang/String;

.field private currentPlayingRecordFile:Ljava/io/File;

.field private isDestroySeveRecoed:Z

.field private mBreakLineView:Landroid/view/View;

.field public mContentsData:Lcn/nubia/notepad/utils/ContentsData;

.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/notepad/reflect/Controller;

.field private mCreatedDate:J

.field private mCurLabelId:I

.field private mCurLabelName:Ljava/lang/String;

.field private mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEmptyPopView:Landroid/view/View;

.field private mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

.field private mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

.field private mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

.field private mImageDataIndex:I

.field private mImageScaleDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInsertImageCount:I

.field private mIsEdit:Z

.field private mIsFromSearch:Z

.field private mIsInsert:Z

.field private mIsInsertAtLast:Z

.field private mIsInsertFirstImage:Z

.field private mIsInsertLastImage:Z

.field private mIsKilled:Z

.field private mIsLeftHandMode:Z

.field private mIsNeedSaveNote:Z

.field private mIsPreview:Z

.field private mIsRemind:Z

.field public mIsRunningCurrentActivity:Z

.field private mIsSoftKeyBoardShow:Z

.field private mIsStartFromWidget:Z

.field private mIsTop:Z

.field private mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

.field private mLabelChanged:Z

.field private mLabelTxt:Landroid/widget/TextView;

.field private mLeftAndRightHandObserver:Landroid/database/ContentObserver;

.field private mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

.field private mMenuDelete:Landroid/widget/ImageView;

.field private mMenuDeleteLayout:Landroid/widget/LinearLayout;

.field private mMenuFormat:Landroid/widget/ImageView;

.field private mMenuFormatLayout:Landroid/widget/LinearLayout;

.field private mMenuImage:Landroid/widget/ImageView;

.field private mMenuImageLayout:Landroid/widget/LinearLayout;

.field private mMenuImageText:Landroid/widget/TextView;

.field private mMenuLable:Landroid/widget/LinearLayout;

.field private mMenuRecord:Landroid/widget/ImageView;

.field private mMenuRecordLayout:Landroid/widget/LinearLayout;

.field private mMenuRemind:Landroid/widget/ImageView;

.field private mMenuRemindLayout:Landroid/widget/LinearLayout;

.field private mMenuRemindTextView:Landroid/widget/TextView;

.field private mMenuShare:Landroid/widget/ImageView;

.field private mMenuShareLayout:Landroid/widget/LinearLayout;

.field private mNeedFocusView:Landroid/view/View;

.field private mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

.field private mNoteContentsData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

.field private mNoteEditorRemind:Landroid/view/View;

.field private mNoteEditorRemindTime:Landroid/widget/TextView;

.field private mNoteId:I

.field private mNoteMode:I

.field private mNoteModifyDate:Landroid/widget/TextView;

.field private mNotePadEditorBodyViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

.field private mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

.field private mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

.field private mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

.field private mNotepadBottomPreviewLayout:Landroid/widget/LinearLayout;

.field private mNotepadContentBoadLayout:Landroid/widget/LinearLayout;

.field private mNotepadDataLoadingLayout:Landroid/view/View;

.field private mNotepadEditorRootLayout:Landroid/widget/RelativeLayout;

.field private mNotepadPreviewBottomEditorLayout:Landroid/widget/LinearLayout;

.field private mNotepadTopBtnLayout:Landroid/widget/LinearLayout;

.field private mNotesData:Lcn/nubia/notepad/utils/NotesData;

.field private mNotesLabelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/notepad/utils/NotesLabelData;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalLableId:I

.field private mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

.field private mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mQueryText:Ljava/lang/String;

.field private mQueryTextEditIndex:I

.field private mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mRemindId:Ljava/lang/String;

.field private mRemindTime:J

.field private mResource:Ljava/lang/String;

.field private mSaveView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mShareImgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mShareTxt:Landroid/widget/TextView;

.field private mShowBottomMenu:Z

.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTextAfterRecord:Ljava/lang/String;

.field private mTitleView:Landroid/widget/EditText;

.field private mUpdateRemindTime:Z

.field private mUpdateTitle:Z

.field private mUri:Landroid/net/Uri;

.field private shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

.field private stringContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadActivity;-><init>()V

    .line 129
    const/16 v0, 0x8

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->REQUEST_SELECT_IMAGE:I

    .line 130
    const/16 v0, 0x14

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_IMAGE_INSERT_MAX:I

    .line 133
    iput v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->CURSOR_LINE_POSITION_FIRST_LINE:I

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->CURSOR_LINE_POSITION_MIDDLE_LINE:I

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->CURSOR_LINE_POSITION_LAST_LINE:I

    .line 137
    iput v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_DEFAULT_CLASSIFY:I

    .line 139
    const-string v0, "menu_listing_mode"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->MENU_LIST_MODE:Ljava/lang/String;

    .line 140
    const-string v0, "menu_record"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->MENU_RECORD:Ljava/lang/String;

    .line 141
    const-string v0, "menu_image"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->MENU_IMAGE:Ljava/lang/String;

    .line 142
    const-string v0, "menu_color_classify"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->MENU_CLASSIFY:Ljava/lang/String;

    .line 143
    const-string v0, "menu_remind"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->MENU_REMIND:Ljava/lang/String;

    .line 144
    const-string v0, "cn.nubia.notepad.action.share"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_SHARE:Ljava/lang/String;

    .line 145
    const-string v0, "cn.nubia.notepad.search"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_SEARCH:Ljava/lang/String;

    .line 146
    const-string v0, "cn.nubia.notepad.force.touch.insert"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_FORCE_TOUCH_NEW_EVENT:Ljava/lang/String;

    .line 147
    const-string v0, "image/"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->SHARE_TYPE_IMAGE:Ljava/lang/String;

    .line 148
    const-string v0, "text/"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->SHARE_TYPE_TXT:Ljava/lang/String;

    .line 150
    const-string v0, "editTextView"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_EDITOR_EDITTEXT_VIEW:Ljava/lang/String;

    .line 151
    const-string v0, "imageView"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_EDITOR_IMAGE_VIEW:Ljava/lang/String;

    .line 152
    const-string v0, "recordView"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NOTEPAD_EDITOR_RECORD_VIEW:Ljava/lang/String;

    .line 153
    const-string v0, "talk"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NIU_TALK:Ljava/lang/String;

    .line 154
    const-string v0, "talkContent"

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NIU_TALK_KEY:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mImageScaleDatas:Ljava/util/List;

    .line 230
    new-instance v0, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    .line 254
    iput v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    .line 255
    iput v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mOriginalLableId:I

    .line 258
    iput v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mImageDataIndex:I

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryTextEditIndex:I

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->stringContent:Ljava/lang/String;

    .line 271
    iput-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/LinearLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/NotePadEditorActivity;->enableOrDisable(Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteData()Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getImagePath()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadContentBoadLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadDataLoadingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    return-object v0
.end method

.method static synthetic access$1702(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    return-object p1
.end method

.method static synthetic access$1800(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1802(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$1902(Lcn/nubia/notepad/NotePadEditorActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCreatedDate:J

    return-wide p1
.end method

.method static synthetic access$200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadRecordViewLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    return-object v0
.end method

.method static synthetic access$2002(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mResource:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/view/NotePadRecordViewLayout;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    return-object p1
.end method

.method static synthetic access$2102(Lcn/nubia/notepad/NotePadEditorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    return p1
.end method

.method static synthetic access$2200(Lcn/nubia/notepad/NotePadEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    return v0
.end method

.method static synthetic access$2202(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    return p1
.end method

.method static synthetic access$2300(Lcn/nubia/notepad/NotePadEditorActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-wide v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcn/nubia/notepad/NotePadEditorActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcn/nubia/notepad/NotePadEditorActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # J

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/NotePadEditorActivity;->showRemindTime(J)V

    return-void
.end method

.method static synthetic access$2502(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsTop:Z

    return p1
.end method

.method static synthetic access$2600(Lcn/nubia/notepad/NotePadEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    return v0
.end method

.method static synthetic access$2602(Lcn/nubia/notepad/NotePadEditorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    return p1
.end method

.method static synthetic access$2702(Lcn/nubia/notepad/NotePadEditorActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mOriginalLableId:I

    return p1
.end method

.method static synthetic access$2800(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/NotePadEditorActivity;->initNoteContentData(Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;I)V

    return-void
.end method

.method static synthetic access$2900(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateShareMenu()V

    return-void
.end method

.method static synthetic access$3000(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateImageMenu()V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsKilled:Z

    return p1
.end method

.method static synthetic access$3100(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkChildViewVisibility()V

    return-void
.end method

.method static synthetic access$3200(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->moveToQueryTextLocation()V

    return-void
.end method

.method static synthetic access$3300(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->observeTitleChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/notepad/NotePadEditorActivity;->setImageViewConfig(Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3600(Lcn/nubia/notepad/NotePadEditorActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->scrollScreen(I)V

    return-void
.end method

.method static synthetic access$3700(Lcn/nubia/notepad/NotePadEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    return v0
.end method

.method static synthetic access$3710(Lcn/nubia/notepad/NotePadEditorActivity;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    return v0
.end method

.method static synthetic access$3800(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3900(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTaskQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4000(Lcn/nubia/notepad/NotePadEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsSoftKeyBoardShow:Z

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->isDestroySeveRecoed:Z

    return p1
.end method

.method static synthetic access$4100(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    return-object v0
.end method

.method static synthetic access$4200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    return-object v0
.end method

.method static synthetic access$4300(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->insertShareImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4400(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->startImagePreview(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcn/nubia/notepad/NotePadEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertAtLast:Z

    return v0
.end method

.method static synthetic access$4600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4700(Lcn/nubia/notepad/NotePadEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$4800(Lcn/nubia/notepad/NotePadEditorActivity;ILjava/util/HashMap;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/notepad/NotePadEditorActivity;->removeChildViewDialogRemind(ILjava/util/HashMap;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4900(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadPlayerViewLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->saveNote()V

    return-void
.end method

.method static synthetic access$5000(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/HashMap;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/NotePadEditorActivity;->removePreView(Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic access$5102(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5200(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateRemindTime:Z

    return p1
.end method

.method static synthetic access$5400(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    return-object v0
.end method

.method static synthetic access$5402(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    return-object p1
.end method

.method static synthetic access$5500(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->deleteNote()V

    return-void
.end method

.method static synthetic access$5600(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->startNoteListActivity()V

    return-void
.end method

.method static synthetic access$5700(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onImageMenuClicked()V

    return-void
.end method

.method static synthetic access$5800(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onShareMenuClicked()V

    return-void
.end method

.method static synthetic access$5900(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onRecordMenuClicked()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updataActionBarTitle()V

    return-void
.end method

.method static synthetic access$6000(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->startNotePadShareActivity()V

    return-void
.end method

.method static synthetic access$6100(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    return-void
.end method

.method static synthetic access$6200(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    return-object v0
.end method

.method static synthetic access$6400(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->checkIsLabelExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6502(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelChanged:Z

    return p1
.end method

.method static synthetic access$6600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6702(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6800(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$6900(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/NotePadEditorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    return v0
.end method

.method static synthetic access$7000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    return-object v0
.end method

.method private addImageView(ILjava/lang/String;Z)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "isInitNoteContentData"    # Z

    .prologue
    .line 2137
    new-instance v8, Lcn/nubia/notepad/view/NotePadImageViewLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lcn/nubia/notepad/view/NotePadImageViewLayout;-><init>(Landroid/content/Context;)V

    .line 2138
    .local v8, "mNotePadImageViewLayout":Lcn/nubia/notepad/view/NotePadImageViewLayout;
    const-string v16, "NotePad"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addImageView: content : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadImageViewLayout;->initView()Landroid/view/View;

    move-result-object v6

    .line 2140
    .local v6, "imageViewLayout":Landroid/view/View;
    iget-object v4, v8, Lcn/nubia/notepad/view/NotePadImageViewLayout;->mImageView:Landroid/widget/ImageView;

    .line 2141
    .local v4, "imageView":Landroid/widget/ImageView;
    sget-object v16, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2142
    const v16, -0x333334

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 2143
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2145
    .local v13, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0070

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c006e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2149
    if-eqz p3, :cond_1

    .line 2150
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2152
    .local v14, "picResourceFilePath":Ljava/lang/String;
    const-string v16, "NotePad"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "addImageView: picResourceFilePath : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 2154
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2155
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v15, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2156
    .local v15, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c00a3

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v10, v0

    .line 2158
    .local v10, "marginLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c00a2

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v11, v0

    .line 2160
    .local v11, "marginRight":I
    sub-int v16, v15, v10

    sub-int v7, v16, v11

    .line 2161
    .local v7, "imageViewWidth":I
    int-to-float v0, v7

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mImageScaleDatas:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mImageDataIndex:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/notepad/NotePadEditorActivity;->mImageDataIndex:I

    .line 2162
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 2163
    .local v5, "imageViewHeight":I
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2164
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2165
    const v16, 0x7f0a00ff

    .line 2166
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 2167
    const v16, 0x7f0a0100

    move/from16 v0, v16

    invoke-virtual {v4, v0, v14}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 2169
    new-instance v16, Lcn/nubia/notepad/NotePadEditorActivity$14;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcn/nubia/notepad/NotePadEditorActivity$14;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2176
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2177
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "imageView"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2179
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->initNotePadEditorLayoutCursor(IZ)V

    .line 2194
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "imageViewHeight":I
    .end local v7    # "imageViewWidth":I
    .end local v10    # "marginLeft":I
    .end local v11    # "marginRight":I
    .end local v14    # "picResourceFilePath":Ljava/lang/String;
    .end local v15    # "screenWidth":I
    :goto_0
    new-instance v16, Lcn/nubia/notepad/NotePadEditorActivity$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6, v4}, Lcn/nubia/notepad/NotePadEditorActivity$15;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;Landroid/widget/ImageView;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2212
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .line 2181
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v16

    move/from16 v0, p1

    move/from16 v1, v16

    if-gt v0, v1, :cond_0

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2185
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2186
    .restart local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v16, "imageView"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mTaskQueue:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v4, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->buildTask(ILandroid/widget/ImageView;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-static/range {v16 .. v17}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v12

    .line 2190
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2191
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->initNotePadEditorLayoutCursor(IZ)V

    goto :goto_0
.end method

.method private addRecordTextLine(I)V
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v3, 0x0

    .line 1566
    .line 1567
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008e

    .line 1566
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1569
    .local v10, "recordIcon":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/text/style/ImageSpan;

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 1570
    .local v7, "imageSpan":Landroid/text/style/ImageSpan;
    new-instance v11, Landroid/text/SpannableString;

    const v0, 0x7f0a00fe

    .line 1571
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1572
    .local v11, "span":Landroid/text/SpannableString;
    const/16 v0, 0x21

    invoke-virtual {v11, v7, v3, v12, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1574
    const-string v2, ""

    const-string v4, "0"

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 1575
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1576
    .local v9, "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "editTextView"

    .line 1577
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1578
    .local v8, "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v0, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v0, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 1580
    iget-object v0, v8, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, v12}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 1581
    return-void
.end method

.method private addRecordView(ILjava/lang/String;Z)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "isInitNoteContentData"    # Z

    .prologue
    const/4 v9, -0x1

    const/4 v11, -0x2

    .line 2277
    const-string v4, ""

    .line 2278
    .local v4, "recordFileName":Ljava/lang/String;
    const-string v5, ""

    .line 2279
    .local v5, "recordFilePath":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 2280
    move-object v4, p2

    .line 2281
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v9, v9, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2292
    :cond_0
    :goto_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2293
    .local v6, "recordResourceFile":Ljava/io/File;
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    .line 2294
    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030021

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .line 2295
    .local v1, "mNoteNotePadRecordFileViewLayout":Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;
    invoke-virtual {v1, v6, p0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->initView(Ljava/io/File;Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;)V

    .line 2296
    iget-object v8, v1, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->mRecordFileViewBodyLayout:Landroid/widget/LinearLayout;

    new-instance v9, Lcn/nubia/notepad/NotePadEditorActivity$17;

    invoke-direct {v9, p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity$17;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V

    .line 2297
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2325
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2327
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0070

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2329
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c006e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2331
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-le p1, v8, :cond_2

    .line 2340
    :goto_1
    return-void

    .line 2284
    .end local v1    # "mNoteNotePadRecordFileViewLayout":Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "recordResourceFile":Ljava/io/File;
    :cond_1
    move-object v5, p2

    .line 2285
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 2286
    .local v7, "start":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 2287
    .local v0, "end":I
    if-eq v7, v9, :cond_0

    if-eq v0, v9, :cond_0

    .line 2288
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2334
    .end local v0    # "end":I
    .end local v7    # "start":I
    .restart local v1    # "mNoteNotePadRecordFileViewLayout":Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "recordResourceFile":Ljava/io/File;
    :cond_2
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2335
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2336
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "recordView"

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v8, p1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2339
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcn/nubia/notepad/NotePadEditorActivity;->initNotePadEditorLayoutCursor(IZ)V

    goto :goto_1
.end method

.method private buildTask(ILandroid/widget/ImageView;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "index"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 2216
    const-string v0, "NotePad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " buildTask ---- content : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    new-instance v0, Lcn/nubia/notepad/NotePadEditorActivity$16;

    invoke-direct {v0, p0, p3, p1}, Lcn/nubia/notepad/NotePadEditorActivity$16;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;I)V

    return-object v0
.end method

.method private cancelRemind()V
    .locals 2

    .prologue
    .line 3144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    .line 3145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    .line 3146
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/Util;->cancelRemindAlarm(Landroid/content/Context;I)V

    .line 3147
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3148
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3150
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateRemindMenu(Z)V

    .line 3151
    return-void
.end method

.method private checkChildViewVisibility()V
    .locals 8

    .prologue
    const v7, 0x7f0a0100

    .line 1959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1960
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1961
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "imageView"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    .line 1962
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1963
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f0081

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1965
    .local v1, "imageView":Landroid/widget/ImageView;
    if-nez v1, :cond_1

    .line 1959
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1970
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1971
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 1973
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1974
    .local v3, "picResourceFilePath":Ljava/lang/String;
    sget-object v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v5, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1975
    .local v4, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v4, v1, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 1980
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "picResourceFilePath":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private checkIsLabelExist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "labelName"    # Ljava/lang/String;

    .prologue
    .line 3726
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 3727
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3728
    const/4 v1, 0x1

    .line 3732
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkNeedMoveCusrsorIndex(I)V
    .locals 7
    .param p1, "indexAtView"    # I

    .prologue
    .line 3926
    const/4 v5, 0x1

    if-ge p1, v5, :cond_1

    .line 3959
    :cond_0
    :goto_0
    return-void

    .line 3928
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 3929
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 3930
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "editTextView"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3931
    const-string v5, "editTextView"

    .line 3932
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3933
    .local v4, "notePadEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v5, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3928
    .end local v4    # "notePadEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3938
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 3939
    .local v3, "mapPre":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 3940
    .local v0, "editTextCursor":Landroid/widget/EditText;
    const-string v5, "imageView"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3941
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f0082

    .line 3942
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 3955
    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    .line 3956
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 3957
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3944
    :cond_5
    const-string v5, "recordView"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3945
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f0090

    .line 3946
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    goto :goto_2

    .line 3948
    :cond_6
    const-string v5, "editTextView"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3952
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0f007f

    .line 3953
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    goto :goto_2
.end method

.method private checkoutCurrentEditTextContent(Landroid/widget/EditText;I)V
    .locals 7
    .param p1, "editTextCursor"    # Landroid/widget/EditText;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 3841
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3842
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    const-string v4, "0"

    const/4 v5, 0x1

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 3844
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$34;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$34;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v1, v4, v5}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3851
    invoke-direct {p0, p1, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    .line 3852
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    .line 3856
    :cond_0
    :goto_0
    return-void

    .line 3853
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 3854
    invoke-direct {p0, p1, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    goto :goto_0
.end method

.method private checkoutCursorOnFormatClick()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 3903
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 3904
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 3905
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3906
    .local v10, "view":Landroid/view/View;
    const/4 v7, 0x0

    .line 3907
    .local v7, "editTextCursor":Landroid/widget/EditText;
    const-string v0, "recordView"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3908
    const v0, 0x7f0f0090

    .line 3909
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "editTextCursor":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 3914
    .restart local v7    # "editTextCursor":Landroid/widget/EditText;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3915
    add-int/lit8 v1, v8, 0x1

    const-string v2, ""

    const-string v4, "0"

    const/4 v5, 0x1

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 3903
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3910
    :cond_2
    const-string v0, "imageView"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3911
    const v0, 0x7f0f0082

    .line 3912
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "editTextCursor":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .restart local v7    # "editTextCursor":Landroid/widget/EditText;
    goto :goto_1

    .line 3918
    .end local v7    # "editTextCursor":Landroid/widget/EditText;
    .end local v9    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private checkoutCursorOnRecordClick()V
    .locals 19

    .prologue
    .line 3862
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 3863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 3864
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 3865
    .local v18, "view":Landroid/view/View;
    const/4 v8, 0x0

    .line 3866
    .local v8, "editTextCursor":Landroid/widget/EditText;
    const-string v1, "recordView"

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3867
    const v1, 0x7f0f0090

    .line 3868
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "editTextCursor":Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 3873
    .restart local v8    # "editTextCursor":Landroid/widget/EditText;
    :cond_0
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3874
    add-int/lit8 v2, v9, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 3875
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 3876
    .local v13, "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "editTextView"

    .line 3877
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3878
    .local v11, "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 3880
    .local v15, "recordIcon":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/text/style/ImageSpan;

    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 3882
    .local v10, "imageSpan":Landroid/text/style/ImageSpan;
    new-instance v16, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00fe

    .line 3883
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3884
    .local v16, "span":Landroid/text/SpannableString;
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/16 v3, 0x21

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3885
    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3886
    .local v17, "textString":Ljava/lang/String;
    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v14

    .line 3887
    .local v14, "position":I
    const/4 v1, -0x1

    if-ne v14, v1, :cond_3

    .line 3897
    .end local v8    # "editTextCursor":Landroid/widget/EditText;
    .end local v10    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v11    # "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "position":I
    .end local v15    # "recordIcon":Landroid/graphics/Bitmap;
    .end local v16    # "span":Landroid/text/SpannableString;
    .end local v17    # "textString":Ljava/lang/String;
    .end local v18    # "view":Landroid/view/View;
    :cond_1
    :goto_2
    return-void

    .line 3869
    .restart local v8    # "editTextCursor":Landroid/widget/EditText;
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v18    # "view":Landroid/view/View;
    :cond_2
    const-string v1, "imageView"

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3870
    const v1, 0x7f0f0082

    .line 3871
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "editTextCursor":Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .restart local v8    # "editTextCursor":Landroid/widget/EditText;
    goto/16 :goto_1

    .line 3890
    .restart local v10    # "imageSpan":Landroid/text/style/ImageSpan;
    .restart local v11    # "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .restart local v13    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "position":I
    .restart local v15    # "recordIcon":Landroid/graphics/Bitmap;
    .restart local v16    # "span":Landroid/text/SpannableString;
    .restart local v17    # "textString":Ljava/lang/String;
    :cond_3
    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3891
    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->append(Ljava/lang/CharSequence;)V

    .line 3892
    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->append(Ljava/lang/CharSequence;)V

    .line 3893
    iget-object v1, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    add-int/lit8 v2, v14, 0x6

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto :goto_2

    .line 3862
    .end local v10    # "imageSpan":Landroid/text/style/ImageSpan;
    .end local v11    # "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .end local v13    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "position":I
    .end local v15    # "recordIcon":Landroid/graphics/Bitmap;
    .end local v16    # "span":Landroid/text/SpannableString;
    .end local v17    # "textString":Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method private convertToShowMode(II)I
    .locals 5
    .param p1, "clickMode"    # I
    .param p2, "fouceMode"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 2522
    packed-switch p2, :pswitch_data_0

    :cond_0
    move p1, v0

    .line 2600
    .end local p1    # "clickMode":I
    :cond_1
    :goto_0
    :pswitch_0
    return p1

    .line 2526
    .restart local p1    # "clickMode":I
    :pswitch_1
    if-ne p1, v3, :cond_2

    move p1, v0

    .line 2527
    goto :goto_0

    .line 2528
    :cond_2
    if-eq p1, v4, :cond_1

    if-eq p1, v1, :cond_1

    .line 2531
    if-ne p1, v2, :cond_0

    .line 2532
    const/4 p1, 0x7

    goto :goto_0

    .line 2536
    :pswitch_2
    if-ne p1, v4, :cond_3

    move p1, v0

    .line 2537
    goto :goto_0

    .line 2538
    :cond_3
    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_1

    .line 2541
    if-ne p1, v2, :cond_0

    .line 2542
    const/4 p1, 0x6

    goto :goto_0

    .line 2546
    :pswitch_3
    if-ne p1, v1, :cond_4

    move p1, v0

    .line 2547
    goto :goto_0

    .line 2548
    :cond_4
    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_1

    .line 2551
    if-ne p1, v2, :cond_0

    .line 2552
    const/4 p1, 0x5

    goto :goto_0

    .line 2556
    :pswitch_4
    if-ne p1, v2, :cond_5

    move p1, v0

    .line 2557
    goto :goto_0

    .line 2558
    :cond_5
    if-ne p1, v3, :cond_6

    .line 2559
    const/4 p1, 0x7

    goto :goto_0

    .line 2560
    :cond_6
    if-ne p1, v4, :cond_7

    .line 2561
    const/4 p1, 0x6

    goto :goto_0

    .line 2562
    :cond_7
    if-ne p1, v1, :cond_0

    .line 2563
    const/4 p1, 0x5

    goto :goto_0

    .line 2567
    :pswitch_5
    if-ne p1, v2, :cond_8

    move p1, v1

    .line 2568
    goto :goto_0

    .line 2569
    :cond_8
    if-ne p1, v3, :cond_9

    .line 2570
    const/4 p1, 0x7

    goto :goto_0

    .line 2571
    :cond_9
    if-ne p1, v4, :cond_a

    .line 2572
    const/4 p1, 0x6

    goto :goto_0

    .line 2573
    :cond_a
    if-ne p1, v1, :cond_0

    move p1, v2

    .line 2574
    goto :goto_0

    .line 2578
    :pswitch_6
    if-ne p1, v2, :cond_b

    move p1, v3

    .line 2579
    goto :goto_0

    .line 2580
    :cond_b
    if-ne p1, v3, :cond_c

    move p1, v2

    .line 2581
    goto :goto_0

    .line 2582
    :cond_c
    if-ne p1, v4, :cond_d

    .line 2583
    const/4 p1, 0x6

    goto :goto_0

    .line 2584
    :cond_d
    if-ne p1, v1, :cond_e

    .line 2585
    const/4 p1, 0x5

    goto :goto_0

    .line 2588
    :cond_e
    :pswitch_7
    if-ne p1, v2, :cond_f

    move p1, v4

    .line 2589
    goto :goto_0

    .line 2590
    :cond_f
    if-ne p1, v3, :cond_10

    .line 2591
    const/4 p1, 0x7

    goto :goto_0

    .line 2592
    :cond_10
    if-ne p1, v4, :cond_11

    move p1, v2

    .line 2593
    goto :goto_0

    .line 2594
    :cond_11
    if-ne p1, v1, :cond_0

    .line 2595
    const/4 p1, 0x5

    goto :goto_0

    .line 2522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private createDeleteDialog()V
    .locals 4

    .prologue
    .line 3154
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3155
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v2, 0x7f0a004d

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 3156
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0034

    .line 3157
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NotePadEditorActivity$23;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NotePadEditorActivity$23;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3156
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 3164
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0048

    .line 3165
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NotePadEditorActivity$24;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NotePadEditorActivity$24;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3164
    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 3176
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    .line 3177
    .local v1, "mAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    const/4 v2, -0x1

    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 3178
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 3179
    return-void
.end method

.method private createLabel()V
    .locals 4

    .prologue
    .line 3691
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3692
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 3695
    :cond_0
    new-instance v0, Lcn/nubia/notepad/NotePadEditorActivity$30;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/NotePadEditorActivity$30;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3721
    .local v0, "inputListener":Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;
    new-instance v1, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;)V

    .line 3722
    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadLabelNameInputDialog;->show()V

    .line 3723
    return-void
.end method

.method private createRemindDialog(Z)V
    .locals 12
    .param p1, "editorTime"    # Z

    .prologue
    const/4 v9, 0x1

    .line 3083
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3084
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->dismiss()V

    .line 3086
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindId:Ljava/lang/String;

    .line 3087
    const-wide/16 v10, 0x0

    .line 3088
    .local v10, "curTime":J
    if-eqz p1, :cond_1

    .line 3089
    iget-wide v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    .line 3094
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_2

    .line 3141
    :goto_1
    return-void

    .line 3091
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getDelayRemindTime()J

    move-result-wide v2

    add-long v10, v0, v2

    goto :goto_0

    .line 3098
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 3099
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3100
    new-instance v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$21;

    invoke-direct {v2, p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity$21;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Z)V

    .line 3124
    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 3125
    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 3126
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    .line 3127
    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 3128
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 3129
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 3130
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0, v9}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setContentDividerVisible(Z)V

    .line 3131
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->show()V

    .line 3132
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$22;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$22;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1
.end method

.method private createShareDialog()V
    .locals 3

    .prologue
    .line 3544
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3545
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v1, 0x7f090006

    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$26;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadEditorActivity$26;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 3561
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0034

    .line 3562
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$27;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadEditorActivity$27;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3561
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 3569
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    .line 3570
    return-void
.end method

.method private deleteNote()V
    .locals 3

    .prologue
    .line 3187
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->deleteResourceFile()V

    .line 3188
    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    if-eqz v1, :cond_0

    .line 3189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3190
    .local v0, "deleteIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/utils/NotesData;->deleteNoteData(Ljava/util/HashMap;)V

    .line 3192
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-static {v1, v2}, Lcn/nubia/notepad/utils/Util;->cancelRemindAlarm(Landroid/content/Context;I)V

    .line 3195
    .end local v0    # "deleteIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method private deleteResourceFile()V
    .locals 5

    .prologue
    .line 3198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3199
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "imageView"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3201
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 3202
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "imageView"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3203
    .local v1, "imageResourceFileName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    const-string v4, "image"

    invoke-virtual {v3, v1, v4}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    .end local v1    # "imageResourceFileName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3205
    :cond_1
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "recordView"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3207
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 3208
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "recordView"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3209
    .local v2, "recordResourceFileName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    const-string v4, "record"

    invoke-virtual {v3, v2, v4}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3213
    .end local v2    # "recordResourceFileName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private doSave()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1168
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 1170
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 1172
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 1175
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v0, :cond_2

    .line 1176
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->saveRecord()V

    .line 1178
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    if-eqz v0, :cond_3

    .line 1179
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1182
    :cond_3
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateRemindTime:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    if-eqz v0, :cond_5

    .line 1183
    :cond_4
    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateRemindTime:Z

    .line 1184
    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    .line 1185
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteData(I)V

    .line 1187
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v0, :cond_6

    .line 1189
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v0, :cond_7

    .line 1190
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$6;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1205
    :cond_6
    :goto_0
    return-void

    .line 1200
    :cond_7
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->saveNote()V

    .line 1201
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updataActionBarTitle()V

    .line 1202
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewMode(ZI)V

    goto :goto_0
.end method

.method private enableOrDisable(Landroid/widget/LinearLayout;Z)V
    .locals 3
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "enable"    # Z

    .prologue
    .line 1316
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, "i":I
    move v1, v0

    .line 1317
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_0

    .line 1318
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setClickable(Z)V

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 1320
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getDelayRemindTime()J
    .locals 6

    .prologue
    .line 3429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3430
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3431
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3432
    .local v2, "mins":I
    const/4 v1, 0x0

    .line 3433
    .local v1, "delayTime":I
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 3434
    rsub-int/lit8 v1, v2, 0x1e

    .line 3438
    :goto_0
    mul-int/lit8 v3, v1, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    return-wide v4

    .line 3436
    :cond_0
    rsub-int/lit8 v1, v2, 0x3c

    goto :goto_0
.end method

.method private getFocusTextView()Lcn/nubia/notepad/view/NotePadEditTextView;
    .locals 4

    .prologue
    .line 1323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1324
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1325
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "editTextView"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1326
    const-string v3, "editTextView"

    .line 1327
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1328
    .local v2, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v3, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1329
    iget-object v3, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 1333
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :goto_1
    return-object v3

    .line 1323
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getImageCount()I
    .locals 4

    .prologue
    .line 3533
    const/4 v0, 0x0

    .line 3534
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3535
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 3536
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "imageView"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3537
    add-int/lit8 v0, v0, 0x1

    .line 3534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3540
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return v0
.end method

.method private getImagePath()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3594
    .local v0, "mImageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 3596
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "NotePad"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImagePath: uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3598
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3599
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3602
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private getLabelNameByLabelId()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0a006c

    .line 3633
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3634
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    .line 3646
    :goto_0
    return-object v1

    .line 3637
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 3638
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3640
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/NotesLabelData;

    .line 3641
    .local v0, "data":Lcn/nubia/notepad/utils/NotesLabelData;
    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3642
    invoke-virtual {v0}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3646
    .end local v0    # "data":Lcn/nubia/notepad/utils/NotesLabelData;
    :cond_3
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getNoteData()Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1758
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v5, v8}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelListWithoutClassifyAll(Z)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    .line 1759
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-virtual {v5, v6}, Lcn/nubia/notepad/utils/NotesData;->getNoteDataById(I)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v2

    .line 1760
    .local v2, "noteData":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    if-nez v2, :cond_1

    .line 1761
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    .line 1762
    const/4 v2, 0x0

    .line 1779
    .end local v2    # "noteData":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_0
    return-object v2

    .line 1764
    .restart local v2    # "noteData":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    :cond_1
    iget-object v1, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    .line 1765
    .local v1, "mNoteResourceDatas":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1766
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const-string v4, ""

    .line 1767
    .local v4, "resourceFilePath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1768
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v5, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v6, "image"

    .line 1769
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v6, v6, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1772
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v5, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1773
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1774
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1775
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mImageScaleDatas:Ljava/util/List;

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getNoteId()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 1208
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    if-eqz v1, :cond_1

    .line 1209
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1219
    :cond_1
    :goto_0
    return v0

    .line 1213
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1214
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private handleIntent()Z
    .locals 11

    .prologue
    const v10, 0x7f0a0089

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 454
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 455
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUri:Landroid/net/Uri;

    .line 456
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 457
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "current_label_id"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mOriginalLableId:I

    iput v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    .line 459
    const-string v8, "label_name"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    .line 460
    const-string v8, "notepad_query_text"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryText:Ljava/lang/String;

    .line 461
    const-string v8, "notepad_widget_start"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsStartFromWidget:Z

    .line 462
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 464
    .local v5, "type":Ljava/lang/String;
    const-string v8, "talk"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "flag":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 466
    const-string v7, "NotePad"

    const-string v8, "action == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    :goto_0
    return v6

    .line 469
    :cond_1
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v8, :pswitch_data_0

    move v6, v7

    .line 529
    goto :goto_0

    .line 469
    :sswitch_0
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v7

    goto :goto_1

    :sswitch_1
    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v6

    goto :goto_1

    :sswitch_2
    const-string v9, "cn.nubia.notepad.force.touch.insert"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "android.intent.action.INSERT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_4
    const-string v9, "android.intent.action.RUN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x4

    goto :goto_1

    :sswitch_5
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x6

    goto :goto_1

    :sswitch_7
    const-string v9, "cn.nubia.notepad.action.share"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x7

    goto :goto_1

    :sswitch_8
    const-string v9, "cn.nubia.notepad.search"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v8, 0x8

    goto :goto_1

    .line 471
    :pswitch_0
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 472
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 473
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    goto :goto_0

    .line 476
    :pswitch_1
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 477
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 478
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v9, "notepad_force_touch_new_event"

    invoke-virtual {v8, v9}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 483
    :pswitch_3
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 484
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 485
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    .line 486
    const-string v7, "talk"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 487
    const-string v7, "talkContent"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->stringContent:Ljava/lang/String;

    goto/16 :goto_0

    .line 491
    :pswitch_4
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 492
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 493
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    .line 494
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v4, "mIntent":Landroid/content/Intent;
    const-string v7, "notification click"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 499
    .end local v4    # "mIntent":Landroid/content/Intent;
    :pswitch_5
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 500
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 501
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    .line 502
    invoke-direct {p0, v5, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->handleShareImage(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 503
    iget-object v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    move v6, v7

    .line 504
    goto/16 :goto_0

    .line 508
    :pswitch_6
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 509
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 510
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    .line 511
    invoke-direct {p0, v5, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->handleShareImages(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 512
    iget-object v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    move v6, v7

    .line 513
    goto/16 :goto_0

    .line 517
    :pswitch_7
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 518
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 519
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    .line 520
    invoke-direct {p0, v5, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->handleShareText(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 523
    :pswitch_8
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 524
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 525
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    .line 526
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsFromSearch:Z

    goto/16 :goto_0

    .line 469
    :sswitch_data_0
    .sparse-switch
        -0x60d1a3ce -> :sswitch_7
        -0x45f4fbb1 -> :sswitch_1
        -0x45ee9a33 -> :sswitch_5
        -0x45ed2f16 -> :sswitch_0
        -0x240bd40d -> :sswitch_8
        -0x37c67be -> :sswitch_6
        0x87f5836 -> :sswitch_2
        0x60d74386 -> :sswitch_4
        0x6abfd7be -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleShareImage(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 553
    const-string v3, "image/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 577
    :cond_0
    :goto_0
    return v2

    .line 557
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nubia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 560
    const-string v3, "NotePadEditorActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not supported share package !!! pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/notepad/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 568
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    .line 573
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v2}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 576
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    const-string v3, "image"

    iput-object v3, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 577
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private handleShareImages(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 581
    const-string v3, "image/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v1

    .line 584
    :cond_1
    const-string v3, "android.intent.extra.STREAM"

    .line 585
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    .line 586
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 589
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 592
    :cond_2
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_3

    .line 593
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a005f

    .line 594
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 593
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 598
    :cond_3
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 599
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 604
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_5
    new-instance v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v1}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 605
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    const-string v3, "image"

    iput-object v3, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    move v1, v2

    .line 606
    goto :goto_0
.end method

.method private handleShareText(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 535
    const-string v2, "text/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "sharedTitle":Ljava/lang/String;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "sharedText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 542
    new-instance v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v2}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 543
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    const-string v3, "text"

    iput-object v3, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 544
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iput-object v0, v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    goto :goto_0
.end method

.method private hideKeyBorad()V
    .locals 3

    .prologue
    .line 3415
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 3417
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 3416
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3419
    :cond_0
    return-void
.end method

.method private initActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1338
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v3

    .line 1339
    .local v3, "mTitleActionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1340
    invoke-virtual {v3, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1341
    invoke-virtual {v3, v5}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1343
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0d0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1344
    .local v1, "bgColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v3, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1346
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    .line 1347
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1348
    .local v2, "inflator":Landroid/view/LayoutInflater;
    const v4, 0x7f03001d

    const/4 v5, 0x0

    .line 1349
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1348
    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1350
    const v4, 0x7f0f007a

    invoke-virtual {p0, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1351
    .local v0, "backLayout":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    return-void
.end method

.method private initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1683
    iput-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsKilled:Z

    .line 1684
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1685
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1686
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 1687
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    .line 1688
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteId()I

    move-result v2

    iput v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    .line 1689
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    if-eqz v2, :cond_2

    .line 1691
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadContentBoadLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1692
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadDataLoadingLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1694
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/nubia/notepad/NotePadEditorActivity$10;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NotePadEditorActivity$10;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1735
    :cond_1
    :goto_0
    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$LeftAndRightHandObserver;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    invoke-direct {v2, v3, p0}, Lcn/nubia/notepad/NotePadEditorActivity$LeftAndRightHandObserver;-><init>(Landroid/os/Handler;Lcn/nubia/notepad/NotePadEditorActivity;)V

    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    .line 1736
    return-void

    .line 1705
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    if-eqz v2, :cond_3

    const-string v2, "text"

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v3, v3, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1706
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1708
    :cond_3
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    if-eqz v2, :cond_4

    const-string v2, "image"

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->shareData:Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v3, v3, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1709
    :cond_4
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 1710
    .local v0, "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v2, "text"

    iput-object v2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 1711
    const-string v2, ""

    iput-object v2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 1712
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1714
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :cond_5
    iput v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    .line 1715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1716
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {p0, v2, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->initNoteContentData(Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;I)V

    .line 1715
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1719
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteModifyDate(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    .line 1720
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updataActionBarTitle()V

    .line 1721
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->updateCurLabel(Ljava/lang/String;)V

    .line 1723
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1724
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/nubia/notepad/NotePadEditorActivity$11;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/NotePadEditorActivity$11;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initNoteContentData(Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;I)V
    .locals 9
    .param p1, "contentData"    # Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1983
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1984
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1985
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0105

    .line 1986
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1985
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1987
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0056

    .line 1988
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v6, v5

    .line 1987
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0106

    .line 1992
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1991
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1993
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0057

    .line 1994
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v6, v5

    .line 1993
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 1997
    :cond_2
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0108

    .line 1998
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1997
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1999
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005a

    .line 2000
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v6, v5

    .line 1999
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 2003
    :cond_3
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0107

    .line 2004
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2003
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2005
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    .line 2006
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v6, v5

    .line 2005
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 2010
    :cond_4
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto :goto_0

    .line 2015
    :cond_5
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "0"

    .line 2016
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2017
    :cond_6
    iget-object v4, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    iget-object v6, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    move-object v2, p0

    move v3, p2

    move v7, v5

    move v8, v5

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2020
    :cond_7
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2021
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2024
    :cond_8
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2025
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2028
    :cond_9
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2029
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x4

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2032
    :cond_a
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2033
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x5

    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    iget-object v1, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 2035
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p2

    move v6, v5

    .line 2033
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2037
    :cond_b
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "12"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2038
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x6

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2041
    :cond_c
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2042
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const/4 v3, 0x7

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2047
    :cond_d
    iget-object v2, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    const-string v4, "0"

    move-object v0, p0

    move v1, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2053
    :cond_e
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "image"

    .line 2054
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2055
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->addImageView(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 2056
    :cond_f
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v1, "record"

    .line 2057
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2058
    iget-object v0, p1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->addRecordView(ILjava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private initNotePadEditorLayoutCursor(IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "isImageViewLayout"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3744
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3748
    .local v1, "view":Landroid/view/View;
    if-eqz p2, :cond_2

    .line 3749
    const v2, 0x7f0f0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3751
    .local v0, "editTextCursor":Landroid/widget/EditText;
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertLastImage:Z

    if-eqz v2, :cond_1

    .line 3752
    invoke-direct {p0, v0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCurrentEditTextContent(Landroid/widget/EditText;I)V

    .line 3753
    iput-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertLastImage:Z

    .line 3763
    :cond_0
    :goto_0
    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$31;

    invoke-direct {v2, p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity$31;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3795
    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$32;

    invoke-direct {v2, p0, v1, p2}, Lcn/nubia/notepad/NotePadEditorActivity$32;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3824
    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$33;

    invoke-direct {v2, p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity$33;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3832
    return-void

    .line 3754
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v2, :cond_0

    .line 3755
    invoke-direct {p0, v0, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    goto :goto_0

    .line 3758
    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    :cond_2
    const v2, 0x7f0f0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3760
    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    invoke-direct {p0, v0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCurrentEditTextContent(Landroid/widget/EditText;I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1224
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->initActionBar()V

    .line 1225
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mBreakLineView:Landroid/view/View;

    .line 1226
    const v0, 0x7f0f0074

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 1227
    const v0, 0x7f0f0071

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    .line 1228
    const v0, 0x7f0f0072

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    .line 1229
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setOnFormatOnClickListener(Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatOnClickListener;)V

    .line 1230
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->bringToFront()V

    .line 1231
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadDataLoadingLayout:Landroid/view/View;

    .line 1232
    const v0, 0x7f0f0073

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadContentBoadLayout:Landroid/widget/LinearLayout;

    .line 1233
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadEditorRootLayout:Landroid/widget/RelativeLayout;

    .line 1234
    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadTopBtnLayout:Landroid/widget/LinearLayout;

    .line 1235
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadEditorRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->isLeftOpen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsLeftHandMode:Z

    .line 1238
    const v0, 0x7f0f0079

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    .line 1239
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    .line 1242
    const v0, 0x7f0f005f

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadPreviewBottomEditorLayout:Landroid/widget/LinearLayout;

    .line 1243
    const v0, 0x7f0f0065

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    .line 1244
    const v0, 0x7f0f005d

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    .line 1245
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1246
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    .line 1247
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    const v0, 0x7f0f0078

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemindTime:Landroid/widget/TextView;

    .line 1250
    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    .line 1251
    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    .line 1252
    const v0, 0x7f0f007b

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    .line 1253
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1258
    :goto_0
    const v0, 0x7f0f005b

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelTxt:Landroid/widget/TextView;

    .line 1259
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    const v0, 0x7f0f005c

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteModifyDate:Landroid/widget/TextView;

    .line 1262
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->initOptionsMenu()V

    .line 1263
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->observeTitleFocusChange()V

    .line 1264
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewMode(ZI)V

    .line 1265
    return-void

    .line 1256
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private insertImageViews(Ljava/lang/String;)V
    .locals 13
    .param p1, "picFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 2403
    const-string v8, ""

    .line 2404
    .local v8, "subStrPre":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2405
    .local v4, "isNeedRemoveCurrentEditTextLayout":Z
    const/4 v6, 0x0

    .line 2406
    .local v6, "position":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 2407
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 2408
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "editTextView"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2409
    const-string v10, "editTextView"

    .line 2410
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2411
    .local v9, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2412
    move v6, v3

    .line 2413
    iget-boolean v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertFirstImage:Z

    if-eqz v10, :cond_2

    .line 2414
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showAddProgress()V

    .line 2415
    const-string v10, ""

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    .line 2416
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v0

    .line 2418
    .local v0, "cursorPosition":I
    :try_start_0
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2419
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2420
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    if-nez v10, :cond_0

    .line 2421
    const/4 v4, 0x1

    .line 2423
    :cond_0
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v7

    .line 2424
    .local v7, "strlen":I
    if-gt v0, v7, :cond_1

    .line 2425
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 2426
    invoke-interface {v10, v0, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 2427
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    .line 2428
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v0, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2431
    :cond_1
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2432
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2461
    .end local v0    # "cursorPosition":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "strlen":I
    .end local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    :goto_1
    if-lez v6, :cond_6

    if-eqz v4, :cond_6

    .line 2462
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2463
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v6}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 2464
    invoke-direct {p0, v6, p1, v12}, Lcn/nubia/notepad/NotePadEditorActivity;->addImageView(ILjava/lang/String;Z)V

    .line 2470
    :goto_2
    return-void

    .line 2434
    .restart local v0    # "cursorPosition":I
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :catch_0
    move-exception v1

    .line 2435
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 2440
    .end local v0    # "cursorPosition":I
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    const-string v10, "recordView"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2441
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2442
    .local v9, "view":Landroid/view/View;
    const v10, 0x7f0f0090

    .line 2443
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2444
    .local v2, "editTextCursor":Landroid/widget/EditText;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2445
    move v6, v3

    .line 2446
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showAddProgress()V

    goto :goto_1

    .line 2449
    .end local v2    # "editTextCursor":Landroid/widget/EditText;
    .end local v9    # "view":Landroid/view/View;
    :cond_4
    const-string v10, "imageView"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2450
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2451
    .restart local v9    # "view":Landroid/view/View;
    const v10, 0x7f0f0082

    .line 2452
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 2453
    .restart local v2    # "editTextCursor":Landroid/widget/EditText;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2454
    move v6, v3

    .line 2455
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showAddProgress()V

    goto :goto_1

    .line 2406
    .end local v2    # "editTextCursor":Landroid/widget/EditText;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2467
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    add-int/lit8 v10, v6, 0x1

    invoke-direct {p0, v10, p1, v12}, Lcn/nubia/notepad/NotePadEditorActivity;->addImageView(ILjava/lang/String;Z)V

    goto :goto_2
.end method

.method private insertNoteData()I
    .locals 6

    .prologue
    .line 3364
    const/4 v1, -0x1

    .line 3365
    .local v1, "noteId":I
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    .line 3366
    .local v0, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    iput-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    .line 3367
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 3368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    .line 3369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 3370
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    iput-boolean v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 3371
    iget-wide v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    iput-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    .line 3372
    const/4 v2, 0x0

    iput v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    .line 3373
    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    iput v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    .line 3374
    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    iput v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    .line 3375
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    if-eqz v2, :cond_0

    .line 3376
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v4, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    iput-wide v4, v2, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 3379
    :cond_0
    :try_start_0
    invoke-static {}, Lcn/nubia/notepad/utils/Logs;->printStackTrace()V

    .line 3380
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    invoke-virtual {v2, v0}, Lcn/nubia/notepad/utils/NotesData;->insertNoteData(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3383
    :goto_0
    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3384
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    invoke-static {v2, v4, v5, v1}, Lcn/nubia/notepad/utils/Util;->setRemindAlarm(Landroid/content/Context;JI)V

    .line 3387
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteModifyDate(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    .line 3388
    return v1

    .line 3381
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private insertShareImage(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "imgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3583
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    .line 3584
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    if-ge v0, v1, :cond_2

    .line 3585
    if-nez v0, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertFirstImage:Z

    .line 3587
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareImgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertLastImage:Z

    .line 3588
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->insertImageViews(Ljava/lang/String;)V

    .line 3584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3585
    goto :goto_1

    :cond_1
    move v1, v3

    .line 3587
    goto :goto_2

    .line 3590
    :cond_2
    return-void
.end method

.method private is24TimeFormat()Z
    .locals 3

    .prologue
    .line 3022
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3023
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const-string v2, "time_12_24"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3025
    .local v1, "strTimeFormat":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3026
    const/4 v2, 0x0

    .line 3028
    :goto_0
    return v2

    :cond_0
    const-string v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isAllEmptyLine(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1562
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private isHasNoteContent(Ljava/util/LinkedList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "noteContentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    const/4 v2, 0x1

    .line 3216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3217
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v1, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v3, "text"

    .line 3218
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3219
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v1, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 3234
    :goto_1
    return v1

    .line 3223
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v1, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v3, "image"

    .line 3224
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 3225
    goto :goto_1

    .line 3228
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v1, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    const-string v3, "record"

    .line 3229
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 3230
    goto :goto_1

    .line 3216
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3234
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isInBottomBarArea(II)Z
    .locals 8
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 783
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 784
    .local v3, "width":I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 785
    .local v0, "height":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 786
    .local v1, "location":[I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 787
    aget v4, v1, v6

    .line 788
    .local v4, "windowX":I
    aget v2, v1, v5

    .line 790
    .local v2, "widowY":I
    if-le p1, v4, :cond_0

    if-ge p1, v3, :cond_0

    if-le p2, v2, :cond_0

    add-int v7, v2, v0

    if-ge p2, v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method private isInPopupWindowArea(II)Z
    .locals 9
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 795
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 796
    .local v3, "width":I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 797
    .local v0, "height":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 798
    .local v1, "location":[I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 799
    aget v4, v1, v6

    .line 800
    .local v4, "windowX":I
    aget v2, v1, v5

    .line 802
    .local v2, "widowY":I
    const-string v7, "NX611J"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 803
    if-le p2, v2, :cond_2

    add-int v7, v2, v0

    if-ge p2, v7, :cond_2

    .line 812
    :cond_0
    :goto_0
    return v5

    .line 807
    :cond_1
    if-le p1, v4, :cond_2

    if-ge p1, v3, :cond_2

    if-le p2, v2, :cond_2

    add-int v7, v2, v0

    if-lt p2, v7, :cond_0

    :cond_2
    move v5, v6

    .line 812
    goto :goto_0
.end method

.method private isInStatusBarArea(II)Z
    .locals 4
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    const/4 v2, 0x1

    .line 816
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 817
    .local v0, "location":[I
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mBreakLineView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 818
    aget v1, v0, v2

    .line 819
    .local v1, "widowY":I
    if-ge p2, v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveToQueryTextLocation()V
    .locals 4

    .prologue
    .line 4016
    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryTextEditIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 4068
    :cond_0
    :goto_0
    return-void

    .line 4020
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    iget v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryTextEditIndex:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 4021
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "editTextView"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4025
    const-string v2, "editTextView"

    .line 4026
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 4028
    .local v1, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v2, v1, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/NotePadEditorActivity$35;

    invoke-direct {v3, p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity$35;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadEditTextLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private observeTitleChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1269
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity$7;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1289
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$8;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$8;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1296
    return-void
.end method

.method private observeTitleFocusChange()V
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$9;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$9;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1313
    return-void
.end method

.method private onDeleteMenuClicked()V
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 1451
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 1453
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->createDeleteDialog()V

    .line 1454
    return-void
.end method

.method private onFormatMenuClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1491
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const-string v1, "menu_listing_mode"

    invoke-static {v0, v1}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1493
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1499
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    .line 1500
    return-void

    .line 1496
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1497
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onImageMenuClicked()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1465
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const-string v2, "menu_image"

    invoke-static {v1, v2}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1466
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v2, "notepad_menu_image"

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1467
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1468
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1471
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notepad_image_count"

    .line 1472
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getImageCount()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x14

    .line 1471
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1473
    invoke-virtual {p0, v0, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1474
    return-void
.end method

.method private onRecordMenuClicked()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v5, 0x0

    .line 1503
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const-string v1, "menu_record"

    invoke-static {v0, v1}, Lcn/nubia/notepad/engine/statistic/MobclickAgentUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_menu_record"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1508
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 1509
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 1510
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "editTextView"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1511
    const-string v0, "editTextView"

    .line 1512
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1513
    .local v11, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v0, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1514
    iget-object v0, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1516
    .local v10, "textString":Ljava/lang/String;
    iget-object v0, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v9

    .line 1517
    .local v9, "position":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_0

    .line 1551
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "position":I
    .end local v10    # "textString":Ljava/lang/String;
    .end local v11    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :goto_1
    return-void

    .line 1520
    .restart local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "position":I
    .restart local v10    # "textString":Ljava/lang/String;
    .restart local v11    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_0
    iget-object v0, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10, v5, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v9, v0, :cond_2

    .line 1523
    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->isAllEmptyLine(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1524
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->addRecordTextLine(I)V

    .line 1525
    add-int/lit8 v1, v7, 0x2

    invoke-virtual {v10, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1526
    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v3

    const-string v4, "0"

    move-object v0, p0

    move v6, v5

    .line 1525
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 1528
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->requestRecordingViewFocus(I)V

    .line 1545
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "position":I
    .end local v10    # "textString":Ljava/lang/String;
    .end local v11    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCursorOnRecordClick()V

    .line 1546
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1547
    new-instance v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 1549
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->initView(I)Landroid/view/View;

    move-result-object v11

    .line 1550
    .local v11, "view":Landroid/view/View;
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1531
    .restart local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "position":I
    .restart local v10    # "textString":Ljava/lang/String;
    .local v11, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    const-string v0, "\n"

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1532
    iget-object v0, v11, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 1533
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1532
    invoke-virtual {v10, v5, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    :cond_3
    add-int/lit8 v0, v7, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->addRecordTextLine(I)V

    goto :goto_2

    .line 1507
    .end local v9    # "position":I
    .end local v10    # "textString":Ljava/lang/String;
    .end local v11    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method private onRemindMenuClicked()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1457
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_menu_remind"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1458
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 1459
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->setRemind()V

    .line 1462
    return-void
.end method

.method private onShareMenuClicked()V
    .locals 2

    .prologue
    .line 1477
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_menu_share"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 1480
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_menu_share_image"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1484
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->startNotePadShareActivity()V

    .line 1488
    :goto_0
    return-void

    .line 1486
    :cond_1
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->createShareDialog()V

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 4071
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/notepad/utils/Util;->LEFT_AND_RIGHT_HAND_SWITCH_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4073
    return-void
.end method

.method private removeChildViewDialogRemind(ILjava/util/HashMap;Landroid/view/View;)V
    .locals 9
    .param p1, "indexAtView"    # I
    .param p3, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2786
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2849
    :goto_0
    return-void

    .line 2790
    :cond_0
    instance-of v4, p3, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 2791
    const v0, 0x7f0a004b

    .local v0, "alertMessage":I
    move-object v2, p3

    .line 2792
    check-cast v2, Landroid/widget/ImageView;

    .line 2793
    .local v2, "imageView":Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2794
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setCropToPadding(Z)V

    .line 2796
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0210

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 2798
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0212

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 2800
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0211

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 2802
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c020f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 2795
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2804
    const v4, 0x7f02005e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2811
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :goto_1
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2812
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2813
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0034

    .line 2814
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/notepad/NotePadEditorActivity$18;

    invoke-direct {v5, p0}, Lcn/nubia/notepad/NotePadEditorActivity$18;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 2813
    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2821
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0048

    .line 2822
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/notepad/NotePadEditorActivity$19;

    invoke-direct {v5, p0, p2, p1}, Lcn/nubia/notepad/NotePadEditorActivity$19;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/util/HashMap;I)V

    .line 2821
    invoke-virtual {v1, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 2830
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 2831
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

    new-instance v5, Lcn/nubia/notepad/NotePadEditorActivity$20;

    invoke-direct {v5, p0, p3}, Lcn/nubia/notepad/NotePadEditorActivity$20;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2847
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v5, -0x1

    const v6, 0x7f0d00c4

    invoke-virtual {p0, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 2848
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mDeleteDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2806
    .end local v0    # "alertMessage":I
    .end local v1    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    :cond_1
    const v0, 0x7f0a004c

    .line 2807
    .restart local v0    # "alertMessage":I
    const v4, 0x7f0f0089

    .line 2808
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2809
    .local v3, "revcordFileViewLayout":Landroid/widget/LinearLayout;
    const v4, 0x7f0201f1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private removePreView(Ljava/util/HashMap;I)V
    .locals 8
    .param p2, "indexAtView"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "mapPre":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const v6, 0x7f0a00ff

    const/4 v7, 0x0

    .line 2984
    const-string v4, "imageView"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2985
    const/4 v1, 0x0

    .line 2986
    .local v1, "imgHeight":I
    const-string v4, "imageView"

    .line 2987
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2988
    .local v2, "picResourceFileName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f0081

    .line 2989
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2990
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 2991
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2993
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2992
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2995
    :cond_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    const-string v5, "image"

    invoke-virtual {v4, v2, v5}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    invoke-direct {p0, p2}, Lcn/nubia/notepad/NotePadEditorActivity;->checkNeedMoveCusrsorIndex(I)V

    .line 2998
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 2999
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 3000
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkChildViewVisibility()V

    .line 3001
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mScrollView:Landroid/widget/ScrollView;

    neg-int v5, v1

    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 3002
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->removeTheContinuousEditText()V

    .line 3003
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateImageMenu()V

    .line 3019
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "imgHeight":I
    .end local v2    # "picResourceFileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 3004
    :cond_2
    const-string v4, "recordView"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3005
    const-string v4, "recordView"

    .line 3006
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3007
    .local v3, "recordResourceFileName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    const-string v5, "record"

    invoke-virtual {v4, v3, v5}, Lcn/nubia/notepad/utils/ContentsData;->deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    invoke-direct {p0, p2}, Lcn/nubia/notepad/NotePadEditorActivity;->checkNeedMoveCusrsorIndex(I)V

    .line 3010
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 3011
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 3012
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkChildViewVisibility()V

    .line 3013
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 3015
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    neg-int v5, v5

    .line 3013
    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 3017
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->removeTheContinuousEditText()V

    goto :goto_0
.end method

.method private removeTheContinuousEditText()V
    .locals 12

    .prologue
    .line 2856
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v10, v1, 0x1

    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 2857
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 2858
    .local v5, "mapNow":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "editTextView"

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2859
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v11, v1, 0x1

    .line 2860
    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2861
    .local v4, "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "editTextView"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2856
    .end local v4    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2864
    .restart local v4    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const/4 v2, 0x0

    .line 2865
    .local v2, "isNextEditTextHasFocus":Z
    const/4 v3, 0x0

    .line 2866
    .local v3, "isNowEditTextHasFocus":Z
    const-string v10, "editTextView"

    .line 2867
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2868
    .local v7, "notePadEditTextLayoutNow":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    const-string v10, "editTextView"

    .line 2869
    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2870
    .local v6, "notePadEditTextLayoutNext":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2871
    const/4 v3, 0x1

    .line 2873
    :cond_2
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2874
    const/4 v2, 0x1

    .line 2876
    :cond_3
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 2877
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_0

    .line 2879
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 2881
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 2883
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 2885
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 2887
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    .line 2889
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    .line 2891
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    .line 2893
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    .line 2895
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_0

    .line 2897
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_0

    .line 2899
    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    .line 2901
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    .line 2904
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2905
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2906
    const-string v10, "editTextView"

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2907
    if-eqz v3, :cond_5

    .line 2908
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v11, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2909
    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    .line 2910
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2909
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2911
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2912
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 2981
    .end local v2    # "isNextEditTextHasFocus":Z
    .end local v3    # "isNowEditTextHasFocus":Z
    .end local v4    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "mapNow":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "notePadEditTextLayoutNext":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .end local v7    # "notePadEditTextLayoutNow":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_4
    :goto_1
    return-void

    .line 2913
    .restart local v2    # "isNextEditTextHasFocus":Z
    .restart local v3    # "isNowEditTextHasFocus":Z
    .restart local v4    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "mapNow":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "notePadEditTextLayoutNext":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .restart local v7    # "notePadEditTextLayoutNow":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_5
    if-eqz v2, :cond_4

    .line 2914
    if-eqz v1, :cond_4

    .line 2915
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2916
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2922
    :cond_6
    const/4 v0, 0x0

    .local v0, "cursorPosition":I
    const/4 v8, 0x0

    .line 2923
    .local v8, "preStrLength":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2924
    .local v9, "sb":Ljava/lang/StringBuilder;
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 2925
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2924
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2926
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 2927
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 2928
    if-eqz v3, :cond_7

    .line 2929
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2930
    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v0

    .line 2932
    :cond_7
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 2933
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    .line 2934
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    .line 2936
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2935
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2937
    if-eqz v2, :cond_8

    .line 2938
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2939
    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v0

    .line 2941
    :cond_8
    if-eqz v3, :cond_a

    .line 2942
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2943
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2942
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2944
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2945
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2946
    invoke-virtual {v10, v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 2970
    :cond_9
    :goto_2
    if-eqz v3, :cond_d

    .line 2971
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2972
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2947
    :cond_a
    if-eqz v2, :cond_9

    .line 2948
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2949
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2948
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2950
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2951
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v11, v0

    .line 2952
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto :goto_2

    .line 2956
    :cond_b
    if-eqz v3, :cond_c

    .line 2957
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2958
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2957
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2959
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2960
    iget-object v10, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2961
    invoke-virtual {v10, v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto :goto_2

    .line 2962
    :cond_c
    if-eqz v2, :cond_9

    .line 2963
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2964
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2963
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2965
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2966
    iget-object v10, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2967
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    .line 2966
    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto :goto_2

    .line 2973
    :cond_d
    if-eqz v2, :cond_4

    .line 2974
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2975
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private requestFocusOnPreviousView()V
    .locals 6

    .prologue
    .line 946
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 947
    .local v3, "position":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 948
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 949
    .local v1, "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 950
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 951
    check-cast v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 952
    .local v0, "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v4, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    iget-object v5, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 953
    iget-object v4, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 956
    .end local v0    # "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .end local v1    # "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private requestRecordingViewFocus(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1554
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1555
    .local v1, "mapNext":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "editTextView"

    .line 1556
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1557
    .local v0, "mEditTextLayout":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 1558
    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 1559
    return-void
.end method

.method private resetTextSize(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 4086
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$36;

    invoke-direct {v1, p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity$36;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4099
    return-void
.end method

.method private saveNote()V
    .locals 6

    .prologue
    const v5, 0x7f0a00fe

    .line 3293
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteContentsData()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 3294
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 3295
    .local v0, "data":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    iget-object v2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3296
    invoke-virtual {p0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3297
    iget-object v2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    goto :goto_0

    .line 3301
    .end local v0    # "data":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-direct {p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->isHasNoteContent(Ljava/util/LinkedList;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    .line 3302
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3303
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    if-eqz v1, :cond_5

    :cond_3
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 3304
    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-direct {p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteData(I)V

    .line 3310
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsEdit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsInsert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithPermit(Ljava/lang/String;)V

    .line 3313
    :cond_4
    return-void

    .line 3306
    :cond_5
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->insertNoteData()I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    .line 3307
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 3308
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    goto :goto_1
.end method

.method private scrollScreen(I)V
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 1941
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$13;

    invoke-direct {v1, p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity$13;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1956
    return-void
.end method

.method private setImageViewConfig(Landroid/widget/ImageView;Ljava/lang/String;II)V
    .locals 10
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "picResourceFilePath"    # Ljava/lang/String;
    .param p3, "bitmapHeight"    # I
    .param p4, "bitmapWidth"    # I

    .prologue
    .line 1917
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1918
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1919
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1920
    .local v6, "screenWidth":I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 1922
    .local v3, "marginLeft":I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c00a2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 1924
    .local v4, "marginRight":I
    sub-int v7, v6, v3

    sub-int v2, v7, v4

    .line 1925
    .local v2, "imageViewWidth":I
    int-to-float v7, v2

    int-to-float v8, p3

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    int-to-float v9, p4

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 1926
    .local v1, "imageViewHeight":I
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1928
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1929
    const v7, 0x7f0a00ff

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1930
    const v7, 0x7f0a0100

    invoke-virtual {p1, v7, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1932
    new-instance v7, Lcn/nubia/notepad/NotePadEditorActivity$12;

    invoke-direct {v7, p0, p2}, Lcn/nubia/notepad/NotePadEditorActivity$12;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1938
    return-void
.end method

.method private setNoteEditMode(I)V
    .locals 29
    .param p1, "mode"    # I

    .prologue
    .line 2604
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 2605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/HashMap;

    .line 2606
    .local v26, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "editTextView"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2607
    const-string v2, "editTextView"

    .line 2608
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2609
    .local v28, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2610
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2611
    .local v16, "content":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->convertToShowMode(II)I

    move-result v8

    .line 2612
    .local v8, "needNoteMode":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\n"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 2613
    :cond_0
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    .line 2614
    if-nez v8, :cond_1

    .line 2615
    invoke-direct/range {p0 .. p0}, Lcn/nubia/notepad/NotePadEditorActivity;->removeTheContinuousEditText()V

    .line 2617
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNumberModeView()V

    .line 2703
    .end local v3    # "i":I
    .end local v8    # "needNoteMode":I
    .end local v16    # "content":Ljava/lang/String;
    .end local v26    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v28    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    :goto_1
    return-void

    .line 2620
    .restart local v3    # "i":I
    .restart local v8    # "needNoteMode":I
    .restart local v16    # "content":Ljava/lang/String;
    .restart local v26    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v28    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getSelectionStart()I

    move-result v18

    .line 2621
    .local v18, "cursorPosition":I
    const-string v2, "\n"

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    .line 2622
    .local v25, "list":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2623
    .local v7, "cursorFocusString":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2625
    .local v19, "firstIndexOfCursorFocusString":I
    const/16 v17, 0x1

    .line 2626
    .local v17, "cursorLinePosition":I
    const/16 v20, 0x0

    .local v20, "indexOfFirst":I
    const/16 v21, 0x0

    .line 2627
    .local v21, "indexOfLast":I
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move-object/from16 v0, v25

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 2628
    const/16 v20, 0x0

    .line 2629
    const/16 v23, 0x0

    .local v23, "k":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 2630
    aget-object v2, v25, v23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v20, v20, v2

    .line 2629
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 2632
    :cond_4
    aget-object v2, v25, v22

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v21, v20, v2

    .line 2633
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    move/from16 v0, v18

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    .line 2635
    move-object/from16 v0, v25

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    .line 2636
    const/16 v17, 0x2

    .line 2638
    :cond_5
    aget-object v7, v25, v22

    .line 2639
    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 2640
    aget-object v2, v25, v23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v19, v19, v2

    .line 2639
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 2642
    :cond_6
    if-nez v19, :cond_7

    .line 2643
    const/16 v17, 0x0

    .line 2648
    .end local v23    # "k":I
    :cond_7
    if-nez v17, :cond_a

    .line 2649
    if-eqz v7, :cond_2

    .line 2653
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    .line 2652
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2654
    .local v4, "subString":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 2655
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    .line 2654
    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2656
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    .line 2657
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const-string v6, "0"

    .end local v3    # "i":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 2659
    .end local v7    # "cursorFocusString":Ljava/lang/String;
    .end local v8    # "needNoteMode":I
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2698
    .end local v4    # "subString":Ljava/lang/String;
    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNumberModeView()V

    goto/16 :goto_1

    .line 2627
    .restart local v3    # "i":I
    .restart local v7    # "cursorFocusString":Ljava/lang/String;
    .restart local v8    # "needNoteMode":I
    .restart local v23    # "k":I
    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 2660
    .end local v23    # "k":I
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_b

    .line 2661
    const/4 v2, 0x0

    add-int/lit8 v5, v19, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2663
    .restart local v4    # "subString":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-interface {v2, v5, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2665
    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    .line 2666
    const/4 v5, 0x0

    const-string v6, "0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 2668
    .end local v7    # "cursorFocusString":Ljava/lang/String;
    .end local v8    # "needNoteMode":I
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    goto :goto_5

    .line 2670
    .end local v4    # "subString":Ljava/lang/String;
    .restart local v7    # "cursorFocusString":Ljava/lang/String;
    .restart local v8    # "needNoteMode":I
    :cond_b
    if-eqz v7, :cond_2

    .line 2674
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v2, v19

    add-int/lit8 v2, v2, 0x1

    .line 2675
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    .line 2673
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 2676
    .local v24, "lastString":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    add-int/lit8 v5, v19, -0x1

    .line 2677
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    .line 2676
    invoke-interface {v2, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2678
    add-int/lit8 v6, v3, 0x1

    const-string v9, "0"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 2681
    add-int/lit8 v10, v3, 0x2

    const/4 v12, 0x0

    const-string v13, "0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, v24

    invoke-virtual/range {v9 .. v15}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    .line 2683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v5, v3, 0x1

    .line 2684
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "editTextView"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2685
    .local v27, "needFocusView":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    move-object/from16 v0, v27

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2686
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2687
    sub-int v2, v18, v19

    move-object/from16 v0, v27

    iget-object v5, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    .line 2688
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v2, v5, :cond_8

    .line 2689
    move-object/from16 v0, v27

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    sub-int v5, v18, v19

    .line 2690
    invoke-virtual {v2, v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto/16 :goto_5

    .line 2694
    :cond_c
    move-object/from16 v0, v27

    iget-object v2, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto/16 :goto_5

    .line 2604
    .end local v7    # "cursorFocusString":Ljava/lang/String;
    .end local v8    # "needNoteMode":I
    .end local v16    # "content":Ljava/lang/String;
    .end local v17    # "cursorLinePosition":I
    .end local v18    # "cursorPosition":I
    .end local v19    # "firstIndexOfCursorFocusString":I
    .end local v20    # "indexOfFirst":I
    .end local v21    # "indexOfLast":I
    .end local v22    # "j":I
    .end local v24    # "lastString":Ljava/lang/String;
    .end local v25    # "list":[Ljava/lang/String;
    .end local v27    # "needFocusView":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .end local v28    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private setPreviewModeForEditText(Landroid/widget/EditText;Z)V
    .locals 2
    .param p1, "editTextCursor"    # Landroid/widget/EditText;
    .param p2, "isPreviewMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3968
    if-nez p1, :cond_0

    .line 3981
    :goto_0
    return-void

    .line 3970
    :cond_0
    if-eqz p2, :cond_1

    .line 3971
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3972
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3973
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 3974
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0

    .line 3976
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3977
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3978
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3979
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method private setRemind()V
    .locals 1

    .prologue
    .line 3053
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    if-eqz v0, :cond_0

    .line 3054
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->cancelRemind()V

    .line 3058
    :goto_0
    return-void

    .line 3056
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->createRemindDialog(Z)V

    goto :goto_0
.end method

.method private settingsPermissions()V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lcn/nubia/notepad/engine/permission/PermissionInspector;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/engine/permission/PermissionInspector;-><init>(Landroid/app/Activity;)V

    .line 425
    .local v0, "inspector":Lcn/nubia/notepad/engine/permission/PermissionInspector;
    invoke-virtual {v0}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->showWarningDialog()V

    .line 426
    return-void
.end method

.method private showAddProgress()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2387
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertFirstImage:Z

    if-eqz v0, :cond_1

    .line 2388
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 2389
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 2391
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2392
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0065

    .line 2394
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2393
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2395
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 2396
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 2397
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f0d0098

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    .line 2398
    iput-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertFirstImage:Z

    .line 2400
    :cond_1
    return-void
.end method

.method private showLabelList()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 3650
    new-instance v0, Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsLeftHandMode:Z

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 3651
    new-instance v0, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    .line 3652
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelAdapter:Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setListAdapter(Lcn/nubia/notepad/popupwindow/NotePadLabelPopupAdapter;)V

    .line 3653
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuLable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setAnchorView(Landroid/view/View;)V

    .line 3654
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnItemClickListenerForListView(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3655
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnClickListenerForMiddleBottomTitle(Landroid/view/View$OnClickListener;)V

    .line 3656
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$28;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$28;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnPopupWindowDismissedListener(Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;)V

    .line 3667
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3668
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3670
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3671
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 3673
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->startQueryLabelData()V

    .line 3674
    return-void
.end method

.method private showRemindTime(J)V
    .locals 5
    .param p1, "remindTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_1

    .line 3034
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3035
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd aa hh:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3036
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3037
    .local v0, "times":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->is24TimeFormat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3038
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3039
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3041
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemindTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3050
    .end local v0    # "times":Ljava/lang/String;
    :goto_0
    return-void

    .line 3043
    :cond_1
    iput-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    .line 3044
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    .line 3045
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3046
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorRemind:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3048
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->updateRemindMenu(Z)V

    goto :goto_0
.end method

.method private startImagePreview(Ljava/lang/String;)V
    .locals 2
    .param p1, "picResourceFilePath"    # Ljava/lang/String;

    .prologue
    .line 2473
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsSoftKeyBoardShow:Z

    if-eqz v1, :cond_0

    .line 2474
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 2476
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2477
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcn/nubia/notepad/NotePadImagePreviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2479
    const-string v1, "picResourceFilePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2480
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2481
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 2482
    return-void
.end method

.method private startNoteListActivity()V
    .locals 2

    .prologue
    .line 3182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3183
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 3184
    return-void
.end method

.method private startNotePadShareActivity()V
    .locals 3

    .prologue
    .line 3573
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/notepad/NotePadShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3575
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notepad_share_id"

    iget v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3576
    const-string v1, "notepad_query_text"

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3578
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 3579
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    .line 3580
    return-void
.end method

.method private startQueryLabelData()V
    .locals 2

    .prologue
    .line 3677
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$29;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$29;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3688
    return-void
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 4076
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 4077
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLeftAndRightHandObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4080
    :cond_0
    return-void
.end method

.method private updataActionBarTitle()V
    .locals 0

    .prologue
    .line 2493
    return-void
.end method

.method private updateBottomMenu(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3616
    iput-boolean p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShowBottomMenu:Z

    .line 3617
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShare:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuDelete:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 3623
    :cond_0
    :goto_0
    return-void

    .line 3620
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadPreviewBottomEditorLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateController()V
    .locals 5

    .prologue
    .line 1152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1153
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1154
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "editTextView"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1155
    const-string v3, "editTextView"

    .line 1156
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1157
    .local v2, "v":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v3, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1158
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    if-eq v3, v2, :cond_0

    .line 1159
    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1160
    new-instance v3, Lcn/nubia/notepad/reflect/Controller;

    iget-object v4, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-direct {v3, v4}, Lcn/nubia/notepad/reflect/Controller;-><init>(Landroid/widget/EditText;)V

    iput-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    .line 1152
    .end local v2    # "v":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private updateImageMenu()V
    .locals 3

    .prologue
    .line 3626
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getImageCount()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3627
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3628
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 3629
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImageText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3630
    return-void

    .line 3626
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNoteData(I)V
    .locals 4
    .param p1, "noteId"    # I

    .prologue
    .line 3392
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    .line 3393
    .local v0, "note":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    iput-object v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->contentsData:Ljava/util/LinkedList;

    .line 3394
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 3395
    iget-wide v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCreatedDate:J

    iput-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->createdDate:J

    .line 3396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 3397
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    iput-boolean v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isRemind:Z

    .line 3398
    iget-wide v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    iput-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->remindTime:J

    .line 3399
    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->classify:I

    .line 3400
    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    iput v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->mode:I

    .line 3401
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsTop:Z

    iput-boolean v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->isTop:Z

    .line 3402
    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    iput v1, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->labelId:I

    .line 3403
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    if-eqz v1, :cond_0

    .line 3404
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    iget-wide v2, v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    iput-wide v2, v1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    .line 3406
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mResource:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsKilled:Z

    invoke-virtual {v1, p1, v0, v2, v3}, Lcn/nubia/notepad/utils/NotesData;->updateNoteData(ILcn/nubia/notepad/utils/NotesData$NOTES_DATA;Ljava/lang/String;Z)V

    .line 3408
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3409
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindTime:J

    invoke-static {v1, v2, v3, p1}, Lcn/nubia/notepad/utils/Util;->setRemindAlarm(Landroid/content/Context;JI)V

    .line 3411
    :cond_1
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteModifyDate(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V

    .line 3412
    return-void
.end method

.method private updateNumberModeAndPopupWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 2100
    const/4 v2, 0x0

    .line 2101
    .local v2, "numberModeCount":I
    const/4 v1, 0x0

    .line 2102
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 2103
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 2104
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2105
    const-string v4, "editTextView"

    .line 2106
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2107
    .local v3, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 2108
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2110
    invoke-virtual {v3, v2}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setNumberModeNumberShow(I)V

    .line 2124
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "editTextView"

    .line 2125
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2126
    const-string v4, "editTextView"

    .line 2127
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2128
    .restart local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v4, v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2129
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    invoke-direct {p0, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->updatePopWindowByMode(I)V

    .line 2102
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2111
    .restart local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 2112
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 2113
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 2114
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    .line 2115
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    .line 2116
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    if-eq v4, v6, :cond_4

    .line 2117
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 2118
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 2121
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2133
    :cond_6
    return-void
.end method

.method private updatePopWindowByMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1375
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    const/4 v1, 0x4

    new-array v1, v1, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FirstFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->SecondFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v5

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ThirdFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v6

    const/4 v2, 0x3

    sget-object v3, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setUnSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    .line 1378
    packed-switch p1, :pswitch_data_0

    .line 1407
    :goto_0
    return-void

    .line 1380
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v5, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FirstFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1383
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v5, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->SecondFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1386
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v5, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ThirdFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1389
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v5, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1392
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v6, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FirstFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1396
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v6, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->ThirdFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1400
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFormatPopupWindow:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;

    new-array v1, v6, [Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->FourthFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v4

    sget-object v2, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;->SecondFormatButton:Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow;->setSelectedFormat([Lcn/nubia/notepad/popupwindow/NotePadFormatPopupWindow$FormatButtonCategory;)V

    goto :goto_0

    .line 1378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateShareMenu()V
    .locals 3

    .prologue
    .line 3606
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShare:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 3613
    :goto_0
    return-void

    .line 3610
    :cond_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getImageCount()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 3611
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShare:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3612
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 3610
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3612
    .restart local v0    # "enabled":Z
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_2
.end method


# virtual methods
.method public addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "noteMode"    # I
    .param p4, "checked"    # Ljava/lang/String;
    .param p5, "isNeedFocus"    # Z
    .param p6, "isInitNoteContentData"    # Z

    .prologue
    .line 2070
    new-instance v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/notepad/view/NotePadEditTextLayout;-><init>(Landroid/content/Context;Lcn/nubia/notepad/engine/interf/INotePadEditTextLayoutListener;)V

    .line 2073
    .local v0, "notePadEditText":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryText:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    move-object v1, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->initView(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcn/nubia/notepad/engine/interf/INotePadEditTextViewListener;)Landroid/view/View;

    move-result-object v9

    .line 2075
    .local v9, "view":Landroid/view/View;
    if-eqz p5, :cond_0

    .line 2076
    iget-object v1, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2077
    iget-object v1, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 2080
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2081
    iget-object v1, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadEditTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2084
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryTextEditIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryText:Ljava/lang/String;

    .line 2085
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryText:Ljava/lang/String;

    .line 2086
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2087
    iput p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mQueryTextEditIndex:I

    .line 2090
    :cond_2
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2092
    .local v8, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9, p1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2093
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2094
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "editTextView"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v1, p1, v7}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 2096
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNumberModeAndPopupWindow()V

    .line 2097
    return-void
.end method

.method public adjInputHintVisibility()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 889
    const v7, 0x7f0a002d

    invoke-virtual {p0, v7}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "defaultHint":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 891
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 892
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 893
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "editTextView"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 894
    const-string v7, "editTextView"

    .line 895
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 896
    .local v6, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 897
    .local v5, "text":Ljava/lang/String;
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 898
    .local v2, "hint":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 899
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v0, v9, :cond_2

    .line 900
    :cond_0
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 901
    if-ne v0, v9, :cond_1

    .line 902
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 911
    .end local v2    # "hint":Ljava/lang/CharSequence;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_1
    :goto_1
    return-void

    .line 905
    .restart local v2    # "hint":Ljava/lang/CharSequence;
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 891
    .end local v2    # "hint":Ljava/lang/CharSequence;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public cancelRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 923
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-nez v1, :cond_0

    .line 934
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->delRecording()Landroid/view/View;

    move-result-object v0

    .line 927
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 928
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecordingByDestroy(Z)V

    .line 929
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 930
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->requestFocusOnPreviousView()V

    goto :goto_0
.end method

.method public changeToPlayerView(Landroid/view/View;Ljava/io/File;)V
    .locals 13
    .param p1, "recordView"    # Landroid/view/View;
    .param p2, "recordResourceFile"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 823
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 824
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v10, :cond_0

    .line 825
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v10, v11}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecordingByDestroy(Z)V

    .line 827
    :cond_0
    const/4 v10, 0x0

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 828
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    const/4 v4, 0x0

    .line 830
    .local v4, "position":I
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    if-nez v10, :cond_1

    .line 873
    :goto_0
    return-void

    .line 831
    :cond_1
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00fe

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, "recordTag":Ljava/lang/String;
    const-string v7, ""

    .line 833
    .local v7, "subStrPre":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v2, v10, :cond_5

    .line 834
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 835
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "editTextView"

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 836
    const-string v10, "editTextView"

    .line 837
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 838
    .local v9, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 839
    .local v8, "text":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 833
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 842
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    move v4, v2

    .line 843
    const-string v10, ""

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    .line 844
    invoke-virtual {v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 845
    .local v1, "focusPosition":I
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v12, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 846
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v6

    .line 848
    .local v6, "strlen":I
    :try_start_0
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    add-int/lit8 v11, v1, 0x6

    .line 849
    invoke-interface {v10, v11, v6}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 850
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    .line 851
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 852
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTextAfterRecord:Ljava/lang/String;

    .line 854
    :cond_4
    iget-object v10, v9, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    .end local v1    # "focusPosition":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "strlen":I
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_5
    if-lez v4, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 865
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 866
    iget-object v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v10, v4}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 867
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v4, v10, v12}, Lcn/nubia/notepad/NotePadEditorActivity;->addRecordView(ILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 855
    .restart local v1    # "focusPosition":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "strlen":I
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 869
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "focusPosition":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "strlen":I
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_6
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11, v12}, Lcn/nubia/notepad/NotePadEditorActivity;->addRecordView(ILjava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public checkPermissions(Ljava/lang/String;I)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "whereclick"    # I

    .prologue
    .line 3455
    new-instance v0, Lcn/nubia/notepad/utils/CtaPermissionUtils;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;-><init>(Landroid/app/Activity;)V

    .line 3456
    .local v0, "ctaPermissionUtils":Lcn/nubia/notepad/utils/CtaPermissionUtils;
    move-object v1, p1

    .line 3457
    .local v1, "types":Ljava/lang/String;
    move v2, p2

    .line 3458
    .local v2, "whereclicks":I
    new-instance v3, Lcn/nubia/notepad/NotePadEditorActivity$25;

    invoke-direct {v3, p0, v1, v2}, Lcn/nubia/notepad/NotePadEditorActivity$25;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v3}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    .line 3485
    return-void
.end method

.method public clearRecordSpan()V
    .locals 11

    .prologue
    .line 3984
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    if-nez v8, :cond_1

    .line 4008
    :cond_0
    return-void

    .line 3987
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 3988
    iget-object v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 3989
    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 3990
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "editTextView"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3987
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3993
    :cond_3
    const-string v8, "editTextView"

    .line 3994
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3995
    .local v7, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v8, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3998
    iget-object v8, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    .line 3999
    .local v5, "spanned":Landroid/text/Spanned;
    const/4 v8, 0x0

    invoke-interface {v5}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/ImageSpan;

    invoke-interface {v5, v8, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ImageSpan;

    .line 4000
    .local v3, "imageSpan":[Landroid/text/style/ImageSpan;
    array-length v8, v3

    if-lez v8, :cond_0

    .line 4003
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 4004
    .local v6, "start":I
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    invoke-interface {v5, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 4005
    .local v0, "end":I
    iget-object v8, v7, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 4006
    .local v1, "et":Landroid/text/Editable;
    invoke-interface {v1, v6, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1
.end method

.method public destroyPlayerView(Landroid/view/View;)V
    .locals 2
    .param p1, "recordView"    # Landroid/view/View;

    .prologue
    .line 876
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 877
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 879
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecordingByDestroy(Z)V

    .line 882
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 885
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 886
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v2, 0x8

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    .line 727
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->isInPopupWindowArea(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->isInStatusBarArea(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->isInBottomBarArea(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 733
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getChildViewIndex(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2706
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getCurrentPlayingRecordFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->currentPlayingRecordFile:Ljava/io/File;

    return-object v0
.end method

.method public getFoucusView()Landroid/view/View;
    .locals 1

    .prologue
    .line 4012
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    return-object v0
.end method

.method public getNoteContentsData()Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 3238
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    if-eqz v5, :cond_0

    .line 3239
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 3241
    :cond_0
    const/4 v5, 0x0

    iput v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    .line 3242
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_d

    .line 3243
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 3244
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 3245
    .local v0, "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v5, "editTextView"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3246
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 3247
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v5, "editTextView"

    .line 3248
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3249
    .local v4, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    const-string v5, "text"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 3250
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    if-ne v5, v7, :cond_4

    .line 3251
    iget-boolean v5, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    if-ne v5, v7, :cond_3

    const-string v5, "1"

    :goto_1
    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 3252
    iput v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    .line 3269
    :cond_1
    :goto_2
    iget-object v5, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3270
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3242
    .end local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3251
    .restart local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    const-string v5, "0"

    goto :goto_1

    .line 3253
    :cond_4
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 3254
    const-string v5, "9"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    goto :goto_2

    .line 3255
    :cond_5
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 3256
    const-string v5, "8"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    goto :goto_2

    .line 3257
    :cond_6
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    .line 3258
    const-string v5, "10"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    goto :goto_2

    .line 3259
    :cond_7
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_8

    .line 3260
    const-string v5, "12"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    goto :goto_2

    .line 3261
    :cond_8
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_9

    .line 3262
    const-string v5, "13"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    goto :goto_2

    .line 3263
    :cond_9
    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 3264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "115"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v5, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;->misChecked:Z

    if-ne v5, v7, :cond_a

    const-string v5, "1"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 3267
    iput v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteMode:I

    goto :goto_2

    .line 3264
    :cond_a
    const-string v5, "0"

    goto :goto_4

    .line 3271
    .end local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_b
    const-string v5, "imageView"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 3272
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 3273
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v5, "image"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 3274
    const-string v5, "imageView"

    .line 3275
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    iget-object v6, v6, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3278
    .local v2, "imgPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3279
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3281
    .end local v2    # "imgPath":Ljava/lang/String;
    :cond_c
    const-string v5, "recordView"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3282
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 3283
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v5, "record"

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 3284
    const-string v5, "recordView"

    .line 3285
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3286
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3289
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    return-object v5
.end method

.method public getNotes()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3515
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 3516
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 3517
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 3518
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "editTextView"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3519
    const-string v5, "editTextView"

    .line 3520
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3521
    .local v4, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v5, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3522
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3516
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3526
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3529
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNotesText()Ljava/lang/String;
    .locals 8

    .prologue
    .line 3489
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3490
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 3491
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 3492
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "editTextView"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3493
    const-string v7, "editTextView"

    .line 3494
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3495
    .local v6, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 3496
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3497
    .local v2, "numberText":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3499
    .end local v2    # "numberText":Ljava/lang/String;
    :cond_0
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 3500
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mShortLineTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3501
    .local v4, "shortLineText":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3503
    .end local v4    # "shortLineText":Ljava/lang/String;
    :cond_1
    iget-object v7, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v7}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3504
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3490
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3508
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3511
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getTextTotal()I
    .locals 5

    .prologue
    .line 3442
    const/4 v2, 0x0

    .line 3443
    .local v2, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3444
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 3445
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3446
    const-string v4, "editTextView"

    .line 3447
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 3448
    .local v3, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v4, v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    .line 3443
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3451
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return v2
.end method

.method public initOptionsMenu()V
    .locals 1

    .prologue
    .line 1410
    const v0, 0x7f0f0061

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuDelete:Landroid/widget/ImageView;

    .line 1411
    const v0, 0x7f0f0060

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuDeleteLayout:Landroid/widget/LinearLayout;

    .line 1412
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuDeleteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1415
    const v0, 0x7f0f0063

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShare:Landroid/widget/ImageView;

    .line 1416
    const v0, 0x7f0f0062

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShareLayout:Landroid/widget/LinearLayout;

    .line 1417
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShare:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1418
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShareLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1420
    const v0, 0x7f0f0064

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShareTxt:Landroid/widget/TextView;

    .line 1422
    const v0, 0x7f0f0068

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuFormat:Landroid/widget/ImageView;

    .line 1423
    const v0, 0x7f0f0067

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuFormatLayout:Landroid/widget/LinearLayout;

    .line 1424
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuFormat:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1425
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuFormatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRecord:Landroid/widget/ImageView;

    .line 1428
    const v0, 0x7f0f006c

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRecordLayout:Landroid/widget/LinearLayout;

    .line 1429
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRecord:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1430
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRecordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1432
    const v0, 0x7f0f006a

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImage:Landroid/widget/ImageView;

    .line 1433
    const v0, 0x7f0f0069

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImageLayout:Landroid/widget/LinearLayout;

    .line 1434
    const v0, 0x7f0f006b

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImageText:Landroid/widget/TextView;

    .line 1435
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1436
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1438
    const v0, 0x7f0f006f

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRemind:Landroid/widget/ImageView;

    .line 1439
    const v0, 0x7f0f0070

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRemindTextView:Landroid/widget/TextView;

    .line 1440
    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRemindLayout:Landroid/widget/LinearLayout;

    .line 1441
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRemind:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRemindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    const v0, 0x7f0f0066

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuLable:Landroid/widget/LinearLayout;

    .line 1445
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuLable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1446
    return-void
.end method

.method public isInPreviewMode()Z
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    return v0
.end method

.method public isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 549
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoftKeyBoardShow()Z
    .locals 1

    .prologue
    .line 1679
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsSoftKeyBoardShow:Z

    return v0
.end method

.method public needSaveNote()V
    .locals 1

    .prologue
    .line 2065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsNeedSaveNote:Z

    .line 2066
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2344
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/notepad/NotePadActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2345
    packed-switch p1, :pswitch_data_0

    .line 2384
    :cond_0
    return-void

    .line 2347
    :pswitch_0
    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertAtLast:Z

    .line 2348
    if-eqz p3, :cond_0

    .line 2351
    iput v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    .line 2352
    const-string v5, "selectedImagesPath"

    .line 2353
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2354
    .local v3, "selectedImagesPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    .line 2355
    if-eqz v3, :cond_0

    .line 2356
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2357
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 2358
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2359
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "editTextView"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2360
    const-string v5, "editTextView"

    .line 2361
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2362
    .local v4, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v5, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2363
    iget-object v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    .line 2364
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertAtLast:Z

    .line 2370
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 2371
    if-nez v1, :cond_3

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertFirstImage:Z

    .line 2372
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsertLastImage:Z

    .line 2373
    new-instance v0, Ljava/io/File;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2374
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2375
    iget v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInsertImageCount:I

    .line 2370
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2356
    .end local v0    # "file":Ljava/io/File;
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    move v5, v7

    .line 2371
    goto :goto_2

    :cond_4
    move v5, v7

    .line 2372
    goto :goto_3

    .line 2379
    .restart local v0    # "file":Ljava/io/File;
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->insertImageViews(Ljava/lang/String;)V

    goto :goto_4

    .line 2345
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1126
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 1128
    iput-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 1130
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsFromSearch:Z

    invoke-virtual {v1, v2, v3}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecording(ZZ)V

    .line 1132
    iput-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 1149
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsFromSearch:Z

    if-eqz v1, :cond_2

    .line 1135
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/SysApplication;->exit()V

    goto :goto_0

    .line 1139
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsStartFromWidget:Z

    if-eqz v1, :cond_3

    .line 1140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsStartFromWidget:Z

    .line 1141
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1144
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "notepad_label_changed"

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelChanged:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1146
    const/16 v1, 0x3f3

    invoke-virtual {p0, v1, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setResult(ILandroid/content/Intent;)V

    .line 1147
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1010
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1012
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateController()V

    .line 1013
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v0, :cond_2

    .line 1014
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewMode(ZI)V

    .line 1020
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    invoke-virtual {v0}, Lcn/nubia/notepad/reflect/Controller;->controllerIsShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1021
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    invoke-virtual {v0}, Lcn/nubia/notepad/reflect/Controller;->hideController()V

    .line 1022
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto :goto_0

    .line 1016
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsSoftKeyBoardShow:Z

    if-nez v0, :cond_1

    .line 1017
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showKeyBorad()V

    goto :goto_1

    .line 1024
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->clearFocus()V

    .line 1026
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    goto :goto_0

    .line 1031
    :sswitch_1
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateController()V

    .line 1032
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    invoke-virtual {v0}, Lcn/nubia/notepad/reflect/Controller;->controllerIsShow()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1033
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mController:Lcn/nubia/notepad/reflect/Controller;

    invoke-virtual {v0}, Lcn/nubia/notepad/reflect/Controller;->hideController()V

    .line 1034
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    goto :goto_0

    .line 1036
    :cond_4
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->clearFocus()V

    .line 1038
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mFocusView:Lcn/nubia/notepad/view/NotePadEditTextLayout;

    iget-object v0, v0, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    goto :goto_0

    .line 1044
    :sswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1045
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_edit_label"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showLabelList()V

    .line 1048
    :cond_5
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    goto/16 :goto_0

    .line 1051
    :sswitch_3
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->createLabel()V

    goto/16 :goto_0

    .line 1054
    :sswitch_4
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteContentsData()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 1055
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v0, :cond_7

    .line 1056
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    :goto_2
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->isHasNoteContent(Ljava/util/LinkedList;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    .line 1061
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1062
    :cond_6
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->doSave()V

    goto/16 :goto_0

    .line 1058
    :cond_7
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1064
    :cond_8
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 1065
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$4;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1075
    :sswitch_5
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onDeleteMenuClicked()V

    goto/16 :goto_0

    .line 1079
    :sswitch_6
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuShare:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const-string v0, "Storage"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->checkPermissions(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1085
    :sswitch_7
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onFormatMenuClicked()V

    goto/16 :goto_0

    .line 1089
    :sswitch_8
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    const-string v0, "RecordRadio"

    invoke-virtual {p0, v0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->checkPermissions(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1098
    :sswitch_9
    const-string v0, "Storage"

    invoke-virtual {p0, v0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->checkPermissions(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1102
    :sswitch_a
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onRemindMenuClicked()V

    goto/16 :goto_0

    .line 1108
    :sswitch_b
    invoke-direct {p0, v2}, Lcn/nubia/notepad/NotePadEditorActivity;->createRemindDialog(Z)V

    goto/16 :goto_0

    .line 1111
    :sswitch_c
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 1112
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$5;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1010
    :sswitch_data_0
    .sparse-switch
        0x7f0f0056 -> :sswitch_1
        0x7f0f005b -> :sswitch_2
        0x7f0f0060 -> :sswitch_5
        0x7f0f0061 -> :sswitch_5
        0x7f0f0062 -> :sswitch_6
        0x7f0f0063 -> :sswitch_6
        0x7f0f0066 -> :sswitch_2
        0x7f0f0067 -> :sswitch_7
        0x7f0f0068 -> :sswitch_7
        0x7f0f0069 -> :sswitch_9
        0x7f0f006a -> :sswitch_9
        0x7f0f006c -> :sswitch_8
        0x7f0f006d -> :sswitch_8
        0x7f0f006e -> :sswitch_a
        0x7f0f006f -> :sswitch_a
        0x7f0f0075 -> :sswitch_b
        0x7f0f0079 -> :sswitch_0
        0x7f0f007a -> :sswitch_c
        0x7f0f007b -> :sswitch_4
        0x7f0f00c3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 651
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 652
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 278
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 280
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->addActivity(Landroid/app/Activity;)V

    .line 281
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setContentView(I)V

    .line 282
    iput-object p0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    .line 285
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->handleIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NightMode:I

    .line 292
    if-eqz p1, :cond_2

    .line 293
    const-string v0, "UI_MODE_CHANGE"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NightMode:I

    const-string v2, "UI_MODE_CHANGE"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 294
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    goto :goto_0

    .line 298
    :cond_2
    new-instance v0, Lcn/nubia/notepad/utils/NotesData;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/notepad/utils/NotesData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    .line 299
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/nubia/notepad/utils/ContentsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContentsData:Lcn/nubia/notepad/utils/ContentsData;

    .line 300
    new-instance v0, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNote:Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .line 301
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 302
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 303
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 304
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTaskQueue:Ljava/util/LinkedList;

    .line 306
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->initView()V

    .line 308
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->initData()V

    .line 309
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->registerContentObserver()V

    .line 310
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcn/nubia/notepad/NotePadEditorActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/notepad/NotePadEditorActivity$1;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 328
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->stringContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->stringContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/notepad/NotePadEditorActivity;->addEditTextView(ILjava/lang/String;ILjava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 430
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 434
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadPreviewBottomEditorLayout:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShowBottomMenu:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mShowBottomMenu:Z

    if-eqz v0, :cond_0

    .line 436
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateShareMenu()V

    .line 437
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateImageMenu()V

    .line 439
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 434
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 656
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteContentsData()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 658
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->isHasNoteContent(Ljava/util/LinkedList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    .line 659
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->deleteNote()V

    .line 663
    :cond_0
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/notepad/SysApplication;->removeActivity(Landroid/app/Activity;)V

    .line 664
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->unRegisterContentObserver()V

    .line 665
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecordingByDestroy(Z)V

    .line 667
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$3;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 683
    :cond_1
    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 684
    iput-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsFromSearch:Z

    .line 685
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 686
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 687
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->destory()V

    .line 692
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    if-eqz v0, :cond_4

    .line 693
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 694
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->setOnPopupWindowDismissedListener(Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;)V

    .line 697
    :cond_4
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 698
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->dismiss()V

    .line 699
    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLunarTimePicker:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 701
    :cond_5
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTaskQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_6

    .line 702
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 704
    :cond_6
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 706
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 708
    :cond_7
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 709
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 711
    :cond_8
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    if-eqz v0, :cond_9

    .line 712
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mHandler:Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 715
    :cond_9
    invoke-static {}, Lcn/nubia/notepad/utils/ContactInfos;->getInstance()Lcn/nubia/notepad/utils/ContactInfos;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/notepad/utils/ContactInfos;->clearContacts()V

    .line 716
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearMemoryCache()V

    .line 717
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 719
    iput-boolean v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsKilled:Z

    .line 720
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 721
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onDestroy()V

    .line 722
    return-void
.end method

.method public onFirstFormatOnClick()V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_format_list"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 741
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCursorOnFormatClick()V

    .line 742
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setNoteEditMode(I)V

    .line 743
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    .line 744
    return-void
.end method

.method public onFourthFormatOnClick()V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_format_subject"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 766
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCursorOnFormatClick()V

    .line 767
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setNoteEditMode(I)V

    .line 768
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    .line 769
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v2, "notepad_edit_label_item"

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindow:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 775
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v0

    .line 776
    .local v0, "labelId":I
    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    .line 777
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesLabelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    .line 778
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelTxt:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updataActionBarTitle()V

    .line 780
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1356
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onLowMemory()V

    .line 1357
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 345
    if-eqz p1, :cond_1

    .line 346
    const-string v0, "xuxiaokun"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->setIntent(Landroid/content/Intent;)V

    .line 348
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 449
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 446
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onBackPressed()V

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    iput-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRunningCurrentActivity:Z

    .line 617
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionEnd(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 621
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mRemindDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 624
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v0, :cond_5

    .line 625
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->saveNote()V

    .line 635
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateRemindTime:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mOriginalLableId:I

    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    if-eq v0, v1, :cond_4

    .line 636
    :cond_3
    iput-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateRemindTime:Z

    .line 637
    iput-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mUpdateTitle:Z

    .line 638
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mCurLabelId:I

    iput v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mOriginalLableId:I

    .line 639
    iget v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteData(I)V

    .line 641
    :cond_4
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onPause()V

    .line 642
    return-void

    .line 626
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsNeedSaveNote:Z

    if-eqz v0, :cond_2

    .line 627
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->saveNote()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 376
    packed-switch p1, :pswitch_data_0

    .line 418
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/notepad/NotePadActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 378
    :pswitch_1
    array-length v2, p3

    :goto_1
    if-ge v1, v2, :cond_0

    aget v0, p3, v1

    .line 379
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 381
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->settingsPermissions()V

    goto :goto_0

    .line 378
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    .end local v0    # "result":I
    :pswitch_2
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget v0, p3, v1

    .line 389
    .restart local v0    # "result":I
    if-eqz v0, :cond_2

    .line 390
    const-string v1, "NotePadEditorActivity"

    const-string v2, "onRequestPermissionsResult: \u672a\u6388\u4e88"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->settingsPermissions()V

    goto :goto_0

    .line 394
    :cond_2
    const-string v1, "NotePadEditorActivity"

    const-string v2, "onRequestPermissionsResult: \u5df2\u6388\u4e88"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v0    # "result":I
    :pswitch_3
    array-length v2, p3

    :goto_2
    if-ge v1, v2, :cond_0

    aget v0, p3, v1

    .line 401
    .restart local v0    # "result":I
    if-eqz v0, :cond_3

    .line 402
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->settingsPermissions()V

    goto :goto_0

    .line 405
    :cond_3
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->onRecordMenuClicked()V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 410
    .end local v0    # "result":I
    :pswitch_4
    array-length v2, p3

    :goto_3
    if-ge v1, v2, :cond_0

    aget v0, p3, v1

    .line 411
    .restart local v0    # "result":I
    if-eqz v0, :cond_4

    .line 412
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0033

    invoke-static {v1, v2}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 410
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 376
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 358
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onResume()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRunningCurrentActivity:Z

    .line 360
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-class v1, Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackSessionStart(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/notepad/NotePadEditorActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/NotePadEditorActivity$2;-><init>(Lcn/nubia/notepad/NotePadEditorActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-nez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->clearRecordSpan()V

    .line 372
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcn/nubia/notepad/NotePadActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 338
    const-string v0, "UI_MODE_CHANGE"

    iget v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->NightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    return-void
.end method

.method public onSecondFormatOnClick()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_format_number"

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCursorOnFormatClick()V

    .line 750
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setNoteEditMode(I)V

    .line 751
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    .line 752
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 646
    invoke-super {p0}, Lcn/nubia/notepad/NotePadActivity;->onStop()V

    .line 647
    return-void
.end method

.method public onThirdFormatOnClick()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_format_dashed_line"

    .line 757
    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 758
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCursorOnFormatClick()V

    .line 759
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->setNoteEditMode(I)V

    .line 760
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    .line 761
    return-void
.end method

.method public playRecordFile(Ljava/io/File;)V
    .locals 5
    .param p1, "recordResourceFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 967
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 970
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 972
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 988
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v1, :cond_1

    .line 976
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v1, p1}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->startPlaying(Ljava/io/File;)V

    goto :goto_0

    .line 978
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v1, :cond_2

    .line 979
    invoke-direct {p0, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->updateBottomMenu(Z)V

    .line 981
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 982
    new-instance v1, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;-><init>(Landroid/content/Context;Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;)V

    iput-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 983
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    iget-boolean v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    invoke-virtual {v1, p1, v2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->initView(Ljava/io/File;Z)Landroid/view/View;

    move-result-object v0

    .line 985
    .local v0, "playerView":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v1, v4}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->startPlaying(I)V

    .line 986
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeChildView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2710
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->getChildViewIndex(Landroid/view/View;)I

    move-result v2

    .line 2711
    .local v2, "indexAtView":I
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    .line 2712
    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2713
    .local v3, "mapNow":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "editTextView"

    .line 2714
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2715
    .local v5, "notePadEditTextNow":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 2716
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_0

    .line 2717
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    .line 2718
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_0

    .line 2719
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    .line 2720
    invoke-virtual {v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_2

    .line 2721
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    .line 2722
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNumberModeView()V

    .line 2723
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    .line 2782
    :cond_1
    :goto_0
    return-void

    .line 2726
    :cond_2
    const/4 v11, 0x1

    if-lt v2, v11, :cond_1

    .line 2729
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v12, v2, -0x1

    .line 2730
    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 2731
    .local v4, "mapPre":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "imageView"

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2732
    iget-object v11, v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2733
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2734
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 2736
    :cond_3
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2737
    .local v1, "imageViewLayout":Landroid/view/View;
    const v11, 0x7f0f0082

    .line 2738
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2739
    .local v0, "cursor":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2780
    .end local v0    # "cursor":Landroid/widget/EditText;
    .end local v1    # "imageViewLayout":Landroid/view/View;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNumberModeView()V

    .line 2781
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateFocusPopupWindow()V

    goto :goto_0

    .line 2740
    :cond_5
    const-string v11, "editTextView"

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2741
    const-string v11, "editTextView"

    .line 2742
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2743
    .local v6, "notePadEditTextPre":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v11, v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2744
    .local v9, "textNow":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v12}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2746
    .local v10, "textPre":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2747
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    iget-object v11, v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcn/nubia/notepad/view/NotePadEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2749
    iget-object v11, v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Lcn/nubia/notepad/view/NotePadEditTextView;->setSelection(I)V

    .line 2750
    iget-object v11, v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->requestFocus()Z

    .line 2751
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 2752
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getChecked()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setChecked(Z)V

    .line 2753
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    .line 2768
    :cond_6
    :goto_2
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2769
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2754
    :cond_7
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 2755
    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    goto :goto_2

    .line 2756
    :cond_8
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_9

    .line 2757
    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    goto :goto_2

    .line 2758
    :cond_9
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_a

    .line 2759
    const/4 v11, 0x4

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    goto :goto_2

    .line 2760
    :cond_a
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_b

    .line 2761
    const/4 v11, 0x6

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    goto :goto_2

    .line 2762
    :cond_b
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_c

    .line 2763
    const/4 v11, 0x7

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    goto :goto_2

    .line 2764
    :cond_c
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_6

    .line 2765
    invoke-virtual {v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getChecked()Z

    move-result v11

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setChecked(Z)V

    .line 2766
    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setEditMode(I)V

    goto :goto_2

    .line 2770
    .end local v6    # "notePadEditTextPre":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "textNow":Ljava/lang/String;
    .end local v10    # "textPre":Ljava/lang/String;
    :cond_d
    const-string v11, "recordView"

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2771
    iget-object v11, v5, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v11}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2772
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 2773
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 2775
    :cond_e
    iget-object v11, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2776
    .local v7, "recordFileViewLayout":Landroid/view/View;
    const v11, 0x7f0f0090

    .line 2777
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2778
    .restart local v0    # "cursor":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1
.end method

.method public removePlayerView(Landroid/view/View;)V
    .locals 3
    .param p1, "playerView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 991
    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 993
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateBottomMenu(Z)V

    .line 994
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->destory()V

    .line 997
    :cond_0
    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 1006
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1000
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->destory()V

    .line 1004
    :cond_2
    iput-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    goto :goto_0
.end method

.method public removeRecordView(Landroid/view/View;)V
    .locals 2
    .param p1, "recordView"    # Landroid/view/View;

    .prologue
    .line 914
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomBodyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 915
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->stopRecordingByDestroy(Z)V

    .line 917
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadRecordViewLayout:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .line 919
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 920
    return-void
.end method

.method public saveNote(Ljava/io/File;)V
    .locals 12
    .param p1, "finalRecordFile"    # Ljava/io/File;

    .prologue
    const v11, 0x7f0a00fe

    const/4 v10, 0x0

    .line 3316
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getNoteContentsData()Ljava/util/LinkedList;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    .line 3317
    const/4 v1, 0x0

    .line 3318
    .local v1, "hasRecordFlagData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 3319
    .local v0, "data":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    iget-object v8, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3320
    invoke-virtual {p0, v11}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3321
    move-object v1, v0

    goto :goto_0

    .line 3324
    .end local v0    # "data":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :cond_1
    if-nez v1, :cond_3

    .line 3325
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 3326
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 3361
    :cond_2
    :goto_1
    return-void

    .line 3330
    :cond_3
    new-instance v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v5}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 3331
    .local v5, "prevPart":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    new-instance v6, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v6}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 3332
    .local v6, "recordPart":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    new-instance v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v4}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V

    .line 3333
    .local v4, "nextPart":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    iget-object v7, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    iput-object v7, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    iput-object v7, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 3334
    const/4 v7, 0x0

    iput-object v7, v6, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 3335
    iget-object v7, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    iput-object v7, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    iput-object v7, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 3336
    const-string v7, "record"

    iput-object v7, v6, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 3337
    iget-object v7, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3338
    invoke-virtual {p0, v11}, Lcn/nubia/notepad/NotePadEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3339
    .local v2, "i":I
    iget-object v7, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3340
    iget-object v7, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x6

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3341
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 3342
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3343
    .local v3, "index":I
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 3344
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v7, v3, v4}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 3345
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v7, v3, v6}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 3346
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteContentsData:Ljava/util/LinkedList;

    invoke-virtual {v7, v3, v5}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 3348
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotesData:Lcn/nubia/notepad/utils/NotesData;

    iget v8, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-virtual {v7, v8}, Lcn/nubia/notepad/utils/NotesData;->getNoteDataById(I)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v0

    .line 3349
    .local v0, "data":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    if-eqz v7, :cond_5

    :cond_4
    iget-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    if-nez v7, :cond_5

    if-eqz v0, :cond_5

    .line 3350
    iget v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    invoke-direct {p0, v7}, Lcn/nubia/notepad/NotePadEditorActivity;->updateNoteData(I)V

    .line 3357
    :goto_2
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 3358
    iget-object v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    .line 3359
    iput-boolean v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->isDestroySeveRecoed:Z

    goto/16 :goto_1

    .line 3352
    :cond_5
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->insertNoteData()I

    move-result v7

    iput v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteId:I

    .line 3353
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 3354
    iput-boolean v10, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsInsert:Z

    goto :goto_2
.end method

.method public setCurrentPlayingRecordFile(Ljava/io/File;)V
    .locals 0
    .param p1, "recordResourceFile"    # Ljava/io/File;

    .prologue
    .line 959
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->currentPlayingRecordFile:Ljava/io/File;

    .line 960
    return-void
.end method

.method public setPreviewMode(ZI)V
    .locals 10
    .param p1, "isPreview"    # Z
    .param p2, "index"    # I

    .prologue
    const v9, 0x7f0f0090

    const v8, 0x7f0f0082

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1584
    iget-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    .line 1585
    invoke-direct {p0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->updateBottomMenu(Z)V

    .line 1676
    :goto_0
    return-void

    .line 1588
    :cond_0
    iget-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    if-eqz v4, :cond_1

    .line 1589
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    if-eqz v4, :cond_1

    .line 1590
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    .line 1591
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadPlayerLayout:Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .line 1594
    :cond_1
    if-eqz p1, :cond_7

    .line 1595
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->hideKeyBorad()V

    .line 1596
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1597
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mEmptyPopView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1599
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1600
    invoke-direct {p0, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->updateBottomMenu(Z)V

    .line 1602
    iput-boolean v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 1603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1604
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1605
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1606
    const-string v4, "editTextView"

    .line 1607
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1608
    .local v3, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v4, v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v4}, Lcn/nubia/notepad/view/NotePadEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setContent(Ljava/lang/String;)V

    .line 1609
    invoke-virtual {v3, v6}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setPreviewMode(Z)V

    .line 1603
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1610
    :cond_3
    const-string v4, "imageView"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1611
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    .line 1612
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1613
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1614
    .local v0, "editTextCursor":Landroid/widget/EditText;
    invoke-direct {p0, v0, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    goto :goto_2

    .line 1615
    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    :cond_4
    const-string v4, "recordView"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1616
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    .line 1617
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1618
    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    invoke-direct {p0, v0, v6}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    goto :goto_2

    .line 1621
    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 1622
    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->updateShareMenu()V

    .line 1675
    :cond_6
    :goto_3
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1624
    .end local v1    # "i":I
    :cond_7
    iput-boolean v5, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsPreview:Z

    .line 1625
    iput-boolean v6, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsEdit:Z

    .line 1626
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mSaveView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1627
    invoke-direct {p0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->updateBottomMenu(Z)V

    .line 1628
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 1629
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotepadBottomEditorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1632
    :cond_8
    const/4 v4, 0x0

    iput-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    .line 1633
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 1634
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 1635
    .restart local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1636
    const-string v4, "editTextView"

    .line 1637
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1638
    .restart local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    invoke-virtual {v3, v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setPreviewMode(Z)V

    .line 1639
    if-ne v1, p2, :cond_9

    .line 1640
    iput-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    .line 1633
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1642
    :cond_a
    const-string v4, "imageView"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1643
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    .line 1644
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1645
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1646
    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    invoke-direct {p0, v0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    .line 1647
    if-ne v1, p2, :cond_9

    .line 1648
    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    goto :goto_5

    .line 1650
    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    :cond_b
    const-string v4, "recordView"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1651
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteEditorBodyLayout:Landroid/widget/LinearLayout;

    .line 1652
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1653
    .restart local v0    # "editTextCursor":Landroid/widget/EditText;
    invoke-direct {p0, v0, v5}, Lcn/nubia/notepad/NotePadEditorActivity;->setPreviewModeForEditText(Landroid/widget/EditText;Z)V

    .line 1654
    if-ne v1, p2, :cond_9

    .line 1655
    iput-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    goto :goto_5

    .line 1659
    .end local v0    # "editTextCursor":Landroid/widget/EditText;
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 1660
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    instance-of v4, v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    if-eqz v4, :cond_d

    .line 1661
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    check-cast v4, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    invoke-virtual {v4, v5}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setPreviewMode(Z)V

    goto/16 :goto_3

    .line 1662
    :cond_d
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_6

    .line 1663
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNeedFocusView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1664
    iget-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsSoftKeyBoardShow:Z

    if-nez v4, :cond_6

    .line 1665
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showKeyBorad()V

    goto/16 :goto_3

    .line 1670
    :cond_e
    iget-boolean v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsSoftKeyBoardShow:Z

    if-nez v4, :cond_6

    .line 1671
    invoke-virtual {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->showKeyBorad()V

    goto/16 :goto_3
.end method

.method public showKeyBorad()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3422
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3423
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 3424
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 3423
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 3426
    :cond_0
    return-void
.end method

.method public updateCurLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 3067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3068
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3070
    :cond_0
    return-void
.end method

.method public updateFocusPopupWindow()V
    .locals 4

    .prologue
    .line 1360
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mPopupWindowContainerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1362
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1363
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "editTextView"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    const-string v3, "editTextView"

    .line 1365
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 1366
    .local v2, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    iget-object v3, v2, Lcn/nubia/notepad/view/NotePadEditTextLayout;->mEditText:Lcn/nubia/notepad/view/NotePadEditTextView;

    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1367
    invoke-virtual {v2}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->updatePopWindowByMode(I)V

    .line 1361
    .end local v2    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    .end local v0    # "i":I
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public updateLeftAndRightHandView()V
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->isLeftOpen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsLeftHandMode:Z

    .line 1755
    return-void
.end method

.method public updateNoteModifyDate(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V
    .locals 3
    .param p1, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .prologue
    .line 3073
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNoteModifyDate:Landroid/widget/TextView;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    invoke-static {p0, v0, v1}, Lcn/nubia/notepad/utils/Util;->getDateTimeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3074
    return-void

    .line 3073
    :cond_0
    iget-wide v0, p1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->modifiedDate:J

    goto :goto_0
.end method

.method public updateNumberModeView()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 2496
    const/4 v2, 0x0

    .line 2497
    .local v2, "numberModeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 2498
    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mNotePadEditorBodyViews:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2499
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "editTextView"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2500
    const-string v4, "editTextView"

    .line 2501
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/notepad/view/NotePadEditTextLayout;

    .line 2502
    .local v3, "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 2503
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 2504
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 2505
    invoke-virtual {v3, v2}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->setNumberModeNumberShow(I)V

    .line 2497
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2506
    .restart local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 2507
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 2508
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 2509
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    .line 2510
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    .line 2511
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 2512
    invoke-virtual {v3}, Lcn/nubia/notepad/view/NotePadEditTextLayout;->getEditMode()I

    move-result v4

    if-nez v4, :cond_1

    .line 2513
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2516
    .end local v3    # "view":Lcn/nubia/notepad/view/NotePadEditTextLayout;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 2519
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    return-void
.end method

.method public updateRemindMenu(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 3077
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mMenuRemindTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mIsRemind:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0094

    .line 3078
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3077
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3080
    return-void

    .line 3077
    :cond_0
    const v0, 0x7f0a0093

    goto :goto_0
.end method

.method public updateTile(Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;)V
    .locals 2
    .param p1, "note"    # Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    .prologue
    .line 3061
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mTitleView:Landroid/widget/EditText;

    iget-object v1, p1, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;->getRealTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3063
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity;->mLabelTxt:Landroid/widget/TextView;

    invoke-direct {p0}, Lcn/nubia/notepad/NotePadEditorActivity;->getLabelNameByLabelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3064
    return-void
.end method
